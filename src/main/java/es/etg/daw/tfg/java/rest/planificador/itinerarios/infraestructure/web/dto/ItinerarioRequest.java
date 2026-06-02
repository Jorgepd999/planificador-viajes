package es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.web.dto;

import jakarta.validation.constraints.*;

public record ItinerarioRequest(

    @NotBlank(message = "{itinerario.valid.nombre.no_vacio}")
    String nombre,

    @Min(value = 1, message = "{itinerario.valid.destino.min}")
    int destinoId,

    @Min(value = 1, message = "{itinerario.valid.duracion.min}")
    @Max(value = 30, message = "{itinerario.valid.duracion.max}")
    int duracion,

    @PositiveOrZero(message = "{itinerario.valid.presupuesto.positivo}")
    double presupuesto,

    String preferencias
) {}
