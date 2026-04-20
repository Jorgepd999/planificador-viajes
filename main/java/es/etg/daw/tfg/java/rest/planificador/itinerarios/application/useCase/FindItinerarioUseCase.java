package es.etg.daw.tfg.java.rest.planificador.itinerarios.application.useCase;

import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.Itinerario;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.ItinerarioId;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.repository.ItinerarioRepository;
import lombok.AllArgsConstructor;

import java.util.List;
import java.util.Optional;

@AllArgsConstructor
public class FindItinerarioUseCase {
    private final ItinerarioRepository itinerarioRepository;

    public List<Itinerario> findAll() {
        return itinerarioRepository.getAll();
    }

    public Optional<Itinerario> findById(ItinerarioId id) {
        return itinerarioRepository.getById(id);
    }

    public List<Itinerario> findFavoritos() {
        return itinerarioRepository.getFavoritos();
    }
}
