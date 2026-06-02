package es.etg.daw.tfg.java.rest.planificador.usuarios.domain.repository;

import es.etg.daw.tfg.java.rest.planificador.common.domain.repository.CRUDRepository;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Usuario;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.UsuarioId;

import java.util.Optional;

public interface UsuarioRepository extends CRUDRepository<Usuario, UsuarioId> {
    Optional<Usuario> getByUsername(String username);
}
