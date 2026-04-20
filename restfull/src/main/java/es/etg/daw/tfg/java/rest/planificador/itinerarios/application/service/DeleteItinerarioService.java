package es.etg.daw.tfg.java.rest.planificador.itinerarios.application.service;

import es.etg.daw.tfg.java.rest.planificador.itinerarios.application.useCase.DeleteItinerarioUseCase;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.ItinerarioId;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class DeleteItinerarioService {
    private final DeleteItinerarioUseCase deleteItinerarioUseCase;

    public void delete(ItinerarioId id) {
        deleteItinerarioUseCase.delete(id);
    }
}
