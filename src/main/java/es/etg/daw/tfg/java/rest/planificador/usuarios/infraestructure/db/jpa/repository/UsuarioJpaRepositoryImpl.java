package es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.db.jpa.repository;

import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Usuario;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.UsuarioId;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.repository.UsuarioRepository;
import es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.mapper.UsuarioMapper;
import lombok.RequiredArgsConstructor;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
public class UsuarioJpaRepositoryImpl implements UsuarioRepository {

    private final UsuarioEntityJpaRepository repository;

    @Override
    public Usuario save(Usuario usuario) {
        return UsuarioMapper.toDomain(repository.save(UsuarioMapper.toEntity(usuario)));
    }

    @Override
    public List<Usuario> getAll() {
        return UsuarioMapper.toDomain(repository.findAll());
    }

    @Override
    public Optional<Usuario> getById(UsuarioId id) {
        return repository.findById(id.getValue()).map(UsuarioMapper::toDomain);
    }

    @Override
    public void deleteById(UsuarioId id) {
        repository.deleteById(id.getValue());
    }

    @Override
    public Optional<Usuario> getByUsername(String username) {
        return repository.findByUsername(username).map(UsuarioMapper::toDomain);
    }
}
