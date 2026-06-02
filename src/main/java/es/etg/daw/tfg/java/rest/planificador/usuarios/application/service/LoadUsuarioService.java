package es.etg.daw.tfg.java.rest.planificador.usuarios.application.service;

import es.etg.daw.tfg.java.rest.planificador.usuarios.application.useCase.LoadUsuarioUseCase;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Usuario;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class LoadUsuarioService {
    private final LoadUsuarioUseCase loadUsuarioUseCase;

    public Optional<Usuario> loadByUsername(String username) {
        return loadUsuarioUseCase.loadByUsername(username);
    }

    public List<Usuario> findAll() {
        return loadUsuarioUseCase.findAll();
    }
}
