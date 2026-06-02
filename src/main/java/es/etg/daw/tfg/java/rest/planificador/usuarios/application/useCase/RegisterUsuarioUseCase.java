package es.etg.daw.tfg.java.rest.planificador.usuarios.application.useCase;

import es.etg.daw.tfg.java.rest.planificador.usuarios.application.command.RegisterUsuarioCommand;
import es.etg.daw.tfg.java.rest.planificador.usuarios.application.port.PasswordHasher;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Usuario;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.repository.UsuarioRepository;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class RegisterUsuarioUseCase {
    private final UsuarioRepository usuarioRepository;
    private final PasswordHasher passwordHasher;

    public Usuario register(RegisterUsuarioCommand comando) {
        Usuario usuario = Usuario.builder()
                .username(comando.username())
                .password(passwordHasher.hash(comando.rawPassword()))
                .nombre(comando.nombre())
                .email(comando.email())
                .rol(comando.rol())
                .enabled(true)
                .build();
        return usuarioRepository.save(usuario);
    }
}
