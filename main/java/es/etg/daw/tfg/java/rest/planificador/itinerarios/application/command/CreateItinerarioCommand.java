package es.etg.daw.tfg.java.rest.planificador.itinerarios.application.command;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.experimental.Accessors;

@Getter
@AllArgsConstructor
@Accessors(fluent = true)
public class CreateItinerarioCommand {
    private final String nombre;
    private final Integer destinoId;
    private final int duracion;
    private final double presupuesto;
    private final String preferencias;
}
