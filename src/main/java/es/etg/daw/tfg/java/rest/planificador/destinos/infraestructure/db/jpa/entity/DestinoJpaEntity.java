package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Data
@AllArgsConstructor
@Builder
@Table(name = "DESTINOS")
public class DestinoJpaEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "nombre", nullable = false, length = 100)
    private String nombre;

    @Column(name = "pais", nullable = false, length = 100)
    private String pais;

    @Column(name = "descripcion", length = 500)
    private String descripcion;

    public DestinoJpaEntity() {}
}
