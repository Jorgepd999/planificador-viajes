package es.etg.daw.tfg.java.rest.planificador.auditoria.domain.repository;

import es.etg.daw.tfg.java.rest.planificador.auditoria.domain.model.Accion;

import java.util.List;

public interface AccionRepository {
    Accion save(Accion accion);

    List<Accion> getAllRecientes();
}
