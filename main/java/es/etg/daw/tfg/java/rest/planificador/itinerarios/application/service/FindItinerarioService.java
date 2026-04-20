package es.etg.daw.tfg.java.rest.planificador.itinerarios.application.service;

import es.etg.daw.tfg.java.rest.planificador.itinerarios.application.useCase.FindItinerarioUseCase;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.Itinerario;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.ItinerarioId;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class FindItinerarioService {
    private final FindItinerarioUseCase findItinerarioUseCase;

    public List<Itinerario> findAll() {
        return findItinerarioUseCase.findAll();
    }

    public Optional<Itinerario> getById(int id) {
        return findItinerarioUseCase.findById(new ItinerarioId(id));
    }

    public List<Itinerario> findFavoritos() {
        return findItinerarioUseCase.findFavoritos();
    }
}
