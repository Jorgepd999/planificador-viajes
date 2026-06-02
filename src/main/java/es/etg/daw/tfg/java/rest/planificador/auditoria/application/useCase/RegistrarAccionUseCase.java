package es.etg.daw.tfg.java.rest.planificador.auditoria.application.useCase;

import es.etg.daw.tfg.java.rest.planificador.auditoria.domain.model.Accion;
import es.etg.daw.tfg.java.rest.planificador.auditoria.domain.repository.AccionRepository;
import lombok.AllArgsConstructor;

import java.time.LocalDateTime;

@AllArgsConstructor
public class RegistrarAccionUseCase {
    private final AccionRepository accionRepository;

    public Accion registrar(String username, String descripcion) {
        Accion accion = Accion.builder()
                .username(username)
                .descripcion(descripcion)
                .fecha(LocalDateTime.now())
                .build();
        return accionRepository.save(accion);
    }
}
