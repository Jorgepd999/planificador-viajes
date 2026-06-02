package es.etg.daw.tfg.java.rest.planificador.destinos.application.command.destino;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.experimental.Accessors;

@Getter
@AllArgsConstructor
@Accessors(fluent = true)
public class CreateDestinoCommand {
    private final String nombre;
    private final String pais;
    private final String descripcion;
}
