package es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.lugar;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.lugar.CreateLugarCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristico;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository.LugarTuristicoRepository;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class CreateLugarUseCase {
    private final LugarTuristicoRepository lugarRepository;

    public LugarTuristico create(CreateLugarCommand comando) {
        LugarTuristico lugar = LugarTuristico.builder()
                .nombre(comando.nombre())
                .descripcion(comando.descripcion())
                .tipo(comando.tipo())
                .precio(comando.precio())
                .duracionVisita(comando.duracionVisita())
                .destinoId(comando.destinoId())
                .build();
        return lugarRepository.save(lugar);
    }
}
