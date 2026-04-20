package es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.web.dto;

public record ItemItinerarioResponse(
    int dia,
    Integer lugarTuristicoId,
    String nombreLugar,
    String tipo,
    double precio,
    double duracionVisita
) {}
