package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.dto.lugar;

public record LugarResponse(
    int id,
    String nombre,
    String descripcion,
    String tipo,
    double precio,
    double duracionVisita,
    int destinoId
) {}
