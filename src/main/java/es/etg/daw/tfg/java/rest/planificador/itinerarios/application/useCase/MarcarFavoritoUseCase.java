package es.etg.daw.tfg.java.rest.planificador.itinerarios.application.useCase;

import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.error.ItinerarioNotFoundException;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.Itinerario;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.ItinerarioId;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.repository.ItinerarioRepository;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class MarcarFavoritoUseCase {
    private final ItinerarioRepository itinerarioRepository;

    public Itinerario toggleFavorito(ItinerarioId id) {
        Itinerario itinerario = itinerarioRepository.getById(id)
                .orElseThrow(() -> new ItinerarioNotFoundException(id.getValue()));
        itinerario.setFavorito(!itinerario.isFavorito());
        return itinerarioRepository.save(itinerario);
    }
}
