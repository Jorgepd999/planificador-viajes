package es.etg.daw.tfg.java.rest.planificador.destinos.application.service.lugar;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.lugar.DeleteLugarUseCase;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristicoId;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class DeleteLugarService {
    private final DeleteLugarUseCase deleteLugarUseCase;

    public void delete(LugarTuristicoId id) {
        deleteLugarUseCase.delete(id);
    }
}
