package es.etg.daw.tfg.java.rest.planificador.usuarios.application.useCase;

import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Rol;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Usuario;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.repository.UsuarioRepository;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class CambiarRolUseCase {
    private final UsuarioRepository usuarioRepository;

    public Usuario cambiarRol(String username, Rol nuevoRol) {
        Usuario usuario = usuarioRepository.getByUsername(username)
                .orElseThrow(() -> new IllegalArgumentException("Usuario no encontrado: " + username));
        usuario.setRol(nuevoRol);
        return usuarioRepository.save(usuario);
    }
}
