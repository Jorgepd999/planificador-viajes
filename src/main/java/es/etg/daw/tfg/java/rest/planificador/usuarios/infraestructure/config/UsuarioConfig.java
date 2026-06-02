package es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.config;

import es.etg.daw.tfg.java.rest.planificador.usuarios.application.port.PasswordHasher;
import es.etg.daw.tfg.java.rest.planificador.usuarios.application.useCase.CambiarRolUseCase;
import es.etg.daw.tfg.java.rest.planificador.usuarios.application.useCase.LoadUsuarioUseCase;
import es.etg.daw.tfg.java.rest.planificador.usuarios.application.useCase.RegisterUsuarioUseCase;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.repository.UsuarioRepository;
import es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.db.jpa.repository.UsuarioEntityJpaRepository;
import es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.db.jpa.repository.UsuarioJpaRepositoryImpl;
import es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.security.BCryptPasswordHasher;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@RequiredArgsConstructor
public class UsuarioConfig {

    private final UsuarioEntityJpaRepository usuarioEntityJpaRepository;
    private final PasswordEncoder passwordEncoder;

    public UsuarioRepository usuarioRepository() {
        return new UsuarioJpaRepositoryImpl(usuarioEntityJpaRepository);
    }

    public PasswordHasher passwordHasher() {
        return new BCryptPasswordHasher(passwordEncoder);
    }

    @Bean
    public RegisterUsuarioUseCase registerUsuarioUseCase() {
        return new RegisterUsuarioUseCase(usuarioRepository(), passwordHasher());
    }

    @Bean
    public LoadUsuarioUseCase loadUsuarioUseCase() {
        return new LoadUsuarioUseCase(usuarioRepository());
    }

    @Bean
    public CambiarRolUseCase cambiarRolUseCase() {
        return new CambiarRolUseCase(usuarioRepository());
    }
}
