package es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Data
@AllArgsConstructor
@Builder
public class Itinerario {
    public Itinerario() {}

    private ItinerarioId id;
    private String nombre;
    private Integer destinoId;
    private String nombreDestino;
    private int duracion;
    private double presupuesto;
    private String preferencias;
    private boolean favorito;
    private LocalDateTime fechaCreacion;
    private List<ItemItinerario> items;
}
