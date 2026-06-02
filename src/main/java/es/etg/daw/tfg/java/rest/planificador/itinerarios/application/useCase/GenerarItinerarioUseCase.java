package es.etg.daw.tfg.java.rest.planificador.itinerarios.application.useCase;

import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristico;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository.LugarTuristicoRepository;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.application.command.CreateItinerarioCommand;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.Itinerario;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.ItemItinerario;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.repository.ItinerarioRepository;
import lombok.AllArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@AllArgsConstructor
public class GenerarItinerarioUseCase {

    private final ItinerarioRepository itinerarioRepository;
    private final LugarTuristicoRepository lugarRepository;

    public Itinerario generar(CreateItinerarioCommand comando) {
        List<String> tiposPreferidos = parsearPreferencias(comando.preferencias());
        List<LugarTuristico> candidatos = obtenerCandidatos(comando.destinoId(), tiposPreferidos);
        List<ItemItinerario> items = distribuirEnDias(candidatos, comando.duracion(), comando.presupuesto());

        Itinerario itinerario = Itinerario.builder()
                .nombre(comando.nombre())
                .destinoId(comando.destinoId())
                .duracion(comando.duracion())
                .presupuesto(comando.presupuesto())
                .preferencias(comando.preferencias())
                .favorito(false)
                .fechaCreacion(LocalDateTime.now())
                .username(comando.username())
                .items(items)
                .build();

        return itinerarioRepository.save(itinerario);
    }

    private List<String> parsearPreferencias(String preferencias) {
        if (preferencias == null || preferencias.isBlank()) {
            return List.of("cultura", "naturaleza", "gastronomia", "ocio");
        }
        return Arrays.stream(preferencias.split(","))
                .map(String::trim)
                .map(String::toLowerCase)
                .collect(Collectors.toList());
    }

    private List<LugarTuristico> obtenerCandidatos(Integer destinoId, List<String> tipos) {
        List<LugarTuristico> todos = lugarRepository.getByDestinoId(new DestinoId(destinoId));
        return todos.stream()
                .filter(l -> tipos.contains(l.getTipo().toLowerCase()))
                .sorted((a, b) -> Double.compare(b.getDuracionVisita(), a.getDuracionVisita()))
                .collect(Collectors.toList());
    }

    private List<ItemItinerario> distribuirEnDias(List<LugarTuristico> candidatos, int duracion, double presupuesto) {
        List<ItemItinerario> items = new ArrayList<>();
        List<LugarTuristico> disponibles = new ArrayList<>(candidatos);
        if (disponibles.isEmpty()) {
            return items;
        }

        double horasPorDia = 8.0;
        double[] horasUsadas = new double[duracion + 1];
        double presupuestoRestante = presupuesto;

        // Paso 1: garantizar al menos una actividad por dia (mientras haya lugares y presupuesto),
        // para que ningun dia se quede vacio. Aqui solo se mira el presupuesto total.
        for (int dia = 1; dia <= duracion; dia++) {
            LugarTuristico elegido = null;
            for (LugarTuristico lugar : disponibles) {
                if (lugar.getPrecio() <= presupuestoRestante) {
                    elegido = lugar;
                    break;
                }
            }
            if (elegido == null) {
                continue; // no queda presupuesto para mas lugares
            }
            items.add(crearItem(dia, elegido));
            horasUsadas[dia] += elegido.getDuracionVisita();
            presupuestoRestante -= elegido.getPrecio();
            disponibles.remove(elegido);
        }

        // Paso 2: rellenar el resto de horas de cada dia con los lugares que queden.
        for (int dia = 1; dia <= duracion; dia++) {
            for (LugarTuristico lugar : new ArrayList<>(disponibles)) {
                if (horasUsadas[dia] + lugar.getDuracionVisita() > horasPorDia) continue;
                if (presupuestoRestante < lugar.getPrecio()) continue;

                items.add(crearItem(dia, lugar));
                horasUsadas[dia] += lugar.getDuracionVisita();
                presupuestoRestante -= lugar.getPrecio();
                disponibles.remove(lugar);
            }
        }
        return items;
    }

    private ItemItinerario crearItem(int dia, LugarTuristico lugar) {
        return ItemItinerario.builder()
                .dia(dia)
                .lugarTuristicoId(lugar.getId().getValue())
                .nombreLugar(lugar.getNombre())
                .tipo(lugar.getTipo())
                .precio(lugar.getPrecio())
                .duracionVisita(lugar.getDuracionVisita())
                .build();
    }
}
