package es.etg.daw.tfg.java.rest.planificador.usuarios.application.service;

import es.etg.daw.tfg.java.rest.planificador.usuarios.application.command.RegisterUsuarioCommand;
import es.etg.daw.tfg.java.rest.planificador.usuarios.application.useCase.RegisterUsuarioUseCase;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Usuario;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class RegisterUsuarioService {
    private final RegisterUsuarioUseCase registerUsuarioUseCase;

    public Usuario register(RegisterUsuarioCommand comando) {
        return registerUsuarioUseCase.register(comando);
    }
}
