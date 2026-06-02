package es.etg.daw.tfg.java.rest.planificador.usuarios.application.command;

import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Rol;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.experimental.Accessors;

@Getter
@AllArgsConstructor
@Accessors(fluent = true)
public class RegisterUsuarioCommand {
    private final String username;
    private final String rawPassword;
    private final String nombre;
    private final String email;
    private final Rol rol;
}
