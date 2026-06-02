package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Data
@AllArgsConstructor
@Builder
@Table(name = "LUGARES_TURISTICOS")
public class LugarTuristicoJpaEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "nombre", nullable = false, length = 150)
    private String nombre;

    @Column(name = "descripcion", length = 500)
    private String descripcion;

    @Column(name = "tipo", nullable = false, length = 50)
    private String tipo;

    @Column(name = "precio", nullable = false)
    private Double precio;

    @Column(name = "duracion_visita", nullable = false)
    private Double duracionVisita;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "destino_id")
    private DestinoJpaEntity destino;

    public LugarTuristicoJpaEntity() {}
}
