package es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.db.jpa.entity;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@Builder
@Table(name = "ITINERARIOS")
public class ItinerarioJpaEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "nombre", nullable = false, length = 200)
    private String nombre;

    @Column(name = "destino_id", nullable = false)
    private Integer destinoId;

    @Column(name = "nombre_destino", length = 100)
    private String nombreDestino;

    @Column(name = "duracion", nullable = false)
    private Integer duracion;

    @Column(name = "presupuesto", nullable = false)
    private Double presupuesto;

    @Column(name = "preferencias", length = 200)
    private String preferencias;

    @Column(name = "favorito")
    private Boolean favorito;

    @Column(name = "fecha_creacion")
    private LocalDateTime fechaCreacion;

    @OneToMany(mappedBy = "itinerario", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.EAGER)
    private List<ItemItinerarioJpaEntity> items;

    public ItinerarioJpaEntity() {}
}
