package es.etg.daw.tfg.java.rest.planificador.auditoria.infraestructure.db.jpa.entity;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Data
@AllArgsConstructor
@Builder
@Table(name = "ACCIONES")
public class AccionJpaEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "username", length = 50)
    private String username;

    @Column(name = "descripcion", nullable = false, length = 300)
    private String descripcion;

    @Column(name = "fecha", nullable = false)
    private LocalDateTime fecha;

    public AccionJpaEntity() {}
}
