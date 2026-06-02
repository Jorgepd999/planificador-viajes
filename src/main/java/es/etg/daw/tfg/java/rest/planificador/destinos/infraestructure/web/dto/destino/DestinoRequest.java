package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.dto.destino;

import jakarta.validation.constraints.NotBlank;

public record DestinoRequest(

    @NotBlank(message = "{destino.valid.nombre.no_vacio}")
    String nombre,

    @NotBlank(message = "{destino.valid.pais.no_vacio}")
    String pais,

    String descripcion
) {}
