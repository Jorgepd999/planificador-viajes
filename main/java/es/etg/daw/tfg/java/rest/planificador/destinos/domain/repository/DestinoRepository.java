package es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository;

import es.etg.daw.tfg.java.rest.planificador.common.domain.repository.CRUDRepository;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.Destino;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;

import java.util.Optional;

public interface DestinoRepository extends CRUDRepository<Destino, DestinoId> {
    Optional<Destino> getByNombre(String nombre);
}
