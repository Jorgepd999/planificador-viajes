package es.etg.daw.tfg.java.rest.planificador.usuarios.application.useCase;

import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Usuario;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.repository.UsuarioRepository;
import lombok.AllArgsConstructor;

import java.util.List;
import java.util.Optional;

@AllArgsConstructor
public class LoadUsuarioUseCase {
    private final UsuarioRepository usuarioRepository;

    public Optional<Usuario> loadByUsername(String username) {
        return usuarioRepository.getByUsername(username);
    }

    public List<Usuario> findAll() {
        return usuarioRepository.getAll();
    }
}
