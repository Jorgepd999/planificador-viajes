package es.etg.daw.tfg.java.rest.planificador.destinos.application.service.lugar;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.lugar.CreateLugarCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.lugar.CreateLugarUseCase;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristico;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CreateLugarService {
    private final CreateLugarUseCase createLugarUseCase;

    public LugarTuristico createLugar(CreateLugarCommand comando) {
        return createLugarUseCase.create(comando);
    }
}
