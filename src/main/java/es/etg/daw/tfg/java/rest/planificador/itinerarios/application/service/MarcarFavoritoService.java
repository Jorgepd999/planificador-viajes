package es.etg.daw.tfg.java.rest.planificador.itinerarios.application.service;

import es.etg.daw.tfg.java.rest.planificador.itinerarios.application.useCase.MarcarFavoritoUseCase;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.Itinerario;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.ItinerarioId;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MarcarFavoritoService {
    private final MarcarFavoritoUseCase marcarFavoritoUseCase;

    public Itinerario toggleFavorito(int id) {
        return marcarFavoritoUseCase.toggleFavorito(new ItinerarioId(id));
    }
}
