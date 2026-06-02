package es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.db.jpa.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Data
@AllArgsConstructor
@Builder
@Table(name = "ITEMS_ITINERARIO")
public class ItemItinerarioJpaEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "dia", nullable = false)
    private Integer dia;

    @Column(name = "lugar_turistico_id")
    private Integer lugarTuristicoId;

    @Column(name = "nombre_lugar", length = 150)
    private String nombreLugar;

    @Column(name = "tipo", length = 50)
    private String tipo;

    @Column(name = "precio")
    private Double precio;

    @Column(name = "duracion_visita")
    private Double duracionVisita;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "itinerario_id")
    private ItinerarioJpaEntity itinerario;

    public ItemItinerarioJpaEntity() {}
}
