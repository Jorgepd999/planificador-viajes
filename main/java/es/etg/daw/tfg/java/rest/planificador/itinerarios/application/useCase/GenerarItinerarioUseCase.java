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
        double horasPorDia = 8.0;
        double presupuestoPorDia = presupuesto / duracion;
        double presupuestoRestante = presupuesto;

        for (int dia = 1; dia <= duracion; dia++) {
            double horasRestantesDia = horasPorDia;
            double gastoDia = 0;
            List<LugarTuristico> usadosHoy = new ArrayList<>();

            for (LugarTuristico lugar : new ArrayList<>(disponibles)) {
                if (horasRestantesDia <= 0) break;
                if (lugar.getDuracionVisita() > horasRestantesDia) continue;
                if (gastoDia + lugar.getPrecio() > presupuestoPorDia * 1.2) continue;
                if (presupuestoRestante < lugar.getPrecio()) continue;

                items.add(ItemItinerario.builder()
                        .dia(dia)
                        .lugarTuristicoId(lugar.getId().getValue())
                        .nombreLugar(lugar.getNombre())
                        .tipo(lugar.getTipo())
                        .precio(lugar.getPrecio())
                        .duracionVisita(lugar.getDuracionVisita())
                        .build());

                horasRestantesDia -= lugar.getDuracionVisita();
                gastoDia += lugar.getPrecio();
                presupuestoRestante -= lugar.getPrecio();
                usadosHoy.add(lugar);
            }
            disponibles.removeAll(usadosHoy);
        }
        return items;
    }
}
