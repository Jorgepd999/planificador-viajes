package es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.repository;

import es.etg.daw.tfg.java.rest.planificador.common.domain.repository.CRUDRepository;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.Itinerario;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.ItinerarioId;

import java.util.List;

public interface ItinerarioRepository extends CRUDRepository<Itinerario, ItinerarioId> {
    List<Itinerario> getByDestinoId(Integer destinoId);
    List<Itinerario> getFavoritos();
}
