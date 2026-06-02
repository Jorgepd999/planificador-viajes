package es.etg.daw.tfg.java.rest.planificador.itinerarios.application.service;

import es.etg.daw.tfg.java.rest.planificador.itinerarios.application.command.CreateItinerarioCommand;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.application.useCase.GenerarItinerarioUseCase;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.Itinerario;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class GenerarItinerarioService {
    private final GenerarItinerarioUseCase generarItinerarioUseCase;

    public Itinerario generar(CreateItinerarioCommand comando) {
        return generarItinerarioUseCase.generar(comando);
    }
}
