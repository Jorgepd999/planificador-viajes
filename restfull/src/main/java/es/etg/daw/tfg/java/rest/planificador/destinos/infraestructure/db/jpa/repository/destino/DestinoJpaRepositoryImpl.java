package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.repository.destino;

import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.Destino;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository.DestinoRepository;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.entity.DestinoJpaEntity;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.mapper.DestinoMapper;
import lombok.RequiredArgsConstructor;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
public class DestinoJpaRepositoryImpl implements DestinoRepository {

    private final DestinoEntityJpaRepository repository;

    @Override
    public Destino save(Destino destino) {
        DestinoJpaEntity entity = DestinoMapper.toEntity(destino);
        return DestinoMapper.toDomain(repository.save(entity));
    }

    @Override
    public List<Destino> getAll() {
        return DestinoMapper.toDomain(repository.findAll());
    }

    @Override
    public Optional<Destino> getById(DestinoId id) {
        Optional<DestinoJpaEntity> entity = repository.findById(id.getValue());
        return entity.map(DestinoMapper::toDomain);
    }

    @Override
    public void deleteById(DestinoId id) {
        repository.deleteById(id.getValue());
    }

    @Override
    public Optional<Destino> getByNombre(String nombre) {
        DestinoJpaEntity entity = repository.findByNombre(nombre);
        return entity != null ? Optional.of(DestinoMapper.toDomain(entity)) : Optional.empty();
    }
}
