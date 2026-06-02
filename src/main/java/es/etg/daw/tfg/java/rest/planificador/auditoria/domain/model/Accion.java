package es.etg.daw.tfg.java.rest.planificador.auditoria.domain.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@Builder
public class Accion {
    public Accion() {}

    private AccionId id;
    private String username;
    private String descripcion;
    private LocalDateTime fecha;
}
