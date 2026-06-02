package es.etg.daw.tfg.java.rest.planificador.usuarios.application.service;

import es.etg.daw.tfg.java.rest.planificador.usuarios.application.useCase.CambiarRolUseCase;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Rol;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Usuario;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CambiarRolService {
    private final CambiarRolUseCase cambiarRolUseCase;

    public Usuario cambiarRol(String username, Rol nuevoRol) {
        return cambiarRolUseCase.cambiarRol(username, nuevoRol);
    }
}
