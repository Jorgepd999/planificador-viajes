package es.etg.daw.tfg.java.rest.planificador.destinos.application.service.destino;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.destino.DeleteDestinoUseCase;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class DeleteDestinoService {
    private final DeleteDestinoUseCase deleteDestinoUseCase;

    public void delete(DestinoId id) {
        deleteDestinoUseCase.delete(id);
    }
}
