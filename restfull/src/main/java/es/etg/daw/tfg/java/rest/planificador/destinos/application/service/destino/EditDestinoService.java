package es.etg.daw.tfg.java.rest.planificador.destinos.application.service.destino;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.destino.EditDestinoCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.destino.EditDestinoUseCase;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.Destino;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class EditDestinoService {
    private final EditDestinoUseCase editDestinoUseCase;

    public Destino update(EditDestinoCommand comando) {
        return editDestinoUseCase.update(comando);
    }
}
