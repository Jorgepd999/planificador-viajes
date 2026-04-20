package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.dto.lugar;

import jakarta.validation.constraints.*;

public record LugarRequest(

    @NotBlank(message = "{lugar.valid.nombre.no_vacio}")
    String nombre,

    String descripcion,

    @NotBlank(message = "{lugar.valid.tipo.no_vacio}")
    String tipo,

    @PositiveOrZero(message = "{lugar.valid.precio.positivo}")
    double precio,

    @Positive(message = "{lugar.valid.duracion.positivo}")
    double duracionVisita,

    @Min(value = 1, message = "{lugar.valid.destino.min}")
    int destinoId
) {}
