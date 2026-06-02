package es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class Usuario {
    public Usuario() {}

    private UsuarioId id;
    private String username;
    private String password;
    private String nombre;
    private String email;
    private Rol rol;
    private boolean enabled;
}
