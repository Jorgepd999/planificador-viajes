package es.etg.daw.tfg.java.rest.planificador.auditoria.application.useCase;

import es.etg.daw.tfg.java.rest.planificador.auditoria.domain.model.Accion;
import es.etg.daw.tfg.java.rest.planificador.auditoria.domain.repository.AccionRepository;
import lombok.AllArgsConstructor;

import java.util.List;

@AllArgsConstructor
public class ListarAccionesUseCase {
    private final AccionRepository accionRepository;

    public List<Accion> listar() {
        return accionRepository.getAllRecientes();
    }
}
