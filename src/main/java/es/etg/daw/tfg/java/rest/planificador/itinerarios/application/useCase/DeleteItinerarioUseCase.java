package es.etg.daw.tfg.java.rest.planificador.itinerarios.application.useCase;

import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.ItinerarioId;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.repository.ItinerarioRepository;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class DeleteItinerarioUseCase {
    private final ItinerarioRepository itinerarioRepository;

    public void delete(ItinerarioId id) {
        itinerarioRepository.deleteById(id);
    }
}
