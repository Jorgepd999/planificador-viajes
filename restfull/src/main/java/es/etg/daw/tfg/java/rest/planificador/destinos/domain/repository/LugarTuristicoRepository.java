package es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository;

import es.etg.daw.tfg.java.rest.planificador.common.domain.repository.CRUDRepository;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristico;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristicoId;

import java.util.List;

public interface LugarTuristicoRepository extends CRUDRepository<LugarTuristico, LugarTuristicoId> {
    List<LugarTuristico> getByDestinoId(DestinoId destinoId);
    List<LugarTuristico> getByDestinoIdAndTipo(DestinoId destinoId, String tipo);
}
