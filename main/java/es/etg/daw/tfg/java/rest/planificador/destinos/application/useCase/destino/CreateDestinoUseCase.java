package es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.destino;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.destino.CreateDestinoCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.Destino;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository.DestinoRepository;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class CreateDestinoUseCase {
    private final DestinoRepository destinoRepository;

    public Destino create(CreateDestinoCommand comando) {
        Destino destino = Destino.builder()
                .nombre(comando.nombre())
                .pais(comando.pais())
                .descripcion(comando.descripcion())
                .build();
        return destinoRepository.save(destino);
    }
}
