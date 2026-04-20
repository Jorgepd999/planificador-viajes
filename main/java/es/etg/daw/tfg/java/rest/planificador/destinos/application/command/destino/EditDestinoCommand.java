package es.etg.daw.tfg.java.rest.planificador.destinos.application.command.destino;

import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.experimental.Accessors;

@Getter
@AllArgsConstructor
@Accessors(fluent = true)
public class EditDestinoCommand {
    private final DestinoId id;
    private final String nombre;
    private final String pais;
    private final String descripcion;
}
