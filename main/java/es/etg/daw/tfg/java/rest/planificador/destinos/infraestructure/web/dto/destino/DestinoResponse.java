package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.dto.destino;

public record DestinoResponse(
    int id,
    String nombre,
    String pais,
    String descripcion
) {}
