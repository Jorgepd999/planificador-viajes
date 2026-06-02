package es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class ItemItinerario {
    private int dia;
    private Integer lugarTuristicoId;
    private String nombreLugar;
    private String tipo;
    private double precio;
    private double duracionVisita;
}
