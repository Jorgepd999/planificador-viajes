package es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.web.dto;

import java.time.LocalDateTime;
import java.util.List;

public record ItinerarioResponse(
    int id,
    String nombre,
    Integer destinoId,
    String nombreDestino,
    int duracion,
    double presupuesto,
    String preferencias,
    boolean favorito,
    LocalDateTime fechaCreacion,
    List<ItemItinerarioResponse> items
) {}
