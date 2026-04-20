package es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.destino;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.destino.EditDestinoCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.error.DestinoNotFoundException;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.Destino;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository.DestinoRepository;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class EditDestinoUseCase {
    private final DestinoRepository destinoRepository;

    public Destino update(EditDestinoCommand comando) {
        Destino existing = destinoRepository.getById(comando.id())
                .orElseThrow(() -> new DestinoNotFoundException(comando.id().getValue()));
        existing.setNombre(comando.nombre());
        existing.setPais(comando.pais());
        existing.setDescripcion(comando.descripcion());
        return destinoRepository.save(existing);
    }
}
