package es.etg.daw.tfg.java.rest.planificador.destinos.application.command.lugar;

import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.experimental.Accessors;

@Getter
@AllArgsConstructor
@Accessors(fluent = true)
public class CreateLugarCommand {
    private final String nombre;
    private final String descripcion;
    private final String tipo;
    private final double precio;
    private final double duracionVisita;
    private final DestinoId destinoId;
}
