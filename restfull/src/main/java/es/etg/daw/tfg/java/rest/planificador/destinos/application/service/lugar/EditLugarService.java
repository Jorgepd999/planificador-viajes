package es.etg.daw.tfg.java.rest.planificador.destinos.application.service.lugar;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.lugar.EditLugarCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.lugar.EditLugarUseCase;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristico;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class EditLugarService {
    private final EditLugarUseCase editLugarUseCase;

    public LugarTuristico update(EditLugarCommand comando) {
        return editLugarUseCase.update(comando);
    }
}
