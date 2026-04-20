package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.repository.lugar;

import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristico;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristicoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository.LugarTuristicoRepository;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.entity.LugarTuristicoJpaEntity;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.mapper.LugarTuristicoMapper;
import lombok.RequiredArgsConstructor;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
public class LugarTuristicoJpaRepositoryImpl implements LugarTuristicoRepository {

    private final LugarTuristicoEntityJpaRepository repository;

    @Override
    public LugarTuristico save(LugarTuristico lugar) {
        LugarTuristicoJpaEntity entity = LugarTuristicoMapper.toEntity(lugar);
        return LugarTuristicoMapper.toDomain(repository.save(entity));
    }

    @Override
    public List<LugarTuristico> getAll() {
        return LugarTuristicoMapper.toDomain(repository.findAll());
    }

    @Override
    public Optional<LugarTuristico> getById(LugarTuristicoId id) {
        Optional<LugarTuristicoJpaEntity> entity = repository.findById(id.getValue());
        return entity.map(LugarTuristicoMapper::toDomain);
    }

    @Override
    public void deleteById(LugarTuristicoId id) {
        repository.deleteById(id.getValue());
    }

    @Override
    public List<LugarTuristico> getByDestinoId(DestinoId destinoId) {
        return LugarTuristicoMapper.toDomain(repository.findByDestinoId(destinoId.getValue()));
    }

    @Override
    public List<LugarTuristico> getByDestinoIdAndTipo(DestinoId destinoId, String tipo) {
        return LugarTuristicoMapper.toDomain(repository.findByDestinoIdAndTipo(destinoId.getValue(), tipo));
    }
}
