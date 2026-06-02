package es.etg.daw.tfg.java.rest.planificador.destinos.application.service.destino;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.destino.CreateDestinoCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.destino.CreateDestinoUseCase;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.Destino;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CreateDestinoService {
    private final CreateDestinoUseCase createDestinoUseCase;

    public Destino createDestino(CreateDestinoCommand comando) {
        return createDestinoUseCase.create(comando);
    }
}
