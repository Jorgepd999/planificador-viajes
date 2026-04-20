package es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.db.jpa.repository;

import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.Itinerario;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.ItinerarioId;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.repository.ItinerarioRepository;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.db.jpa.entity.ItinerarioJpaEntity;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.mapper.ItinerarioMapper;
import lombok.RequiredArgsConstructor;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
public class ItinerarioJpaRepositoryImpl implements ItinerarioRepository {

    private final ItinerarioEntityJpaRepository repository;

    @Override
    public Itinerario save(Itinerario itinerario) {
        ItinerarioJpaEntity entity = ItinerarioMapper.toEntity(itinerario);
        return ItinerarioMapper.toDomain(repository.save(entity));
    }

    @Override
    public List<Itinerario> getAll() {
        return ItinerarioMapper.toDomain(repository.findAll());
    }

    @Override
    public Optional<Itinerario> getById(ItinerarioId id) {
        return repository.findById(id.getValue()).map(ItinerarioMapper::toDomain);
    }

    @Override
    public void deleteById(ItinerarioId id) {
        repository.deleteById(id.getValue());
    }

    @Override
    public List<Itinerario> getByDestinoId(Integer destinoId) {
        return ItinerarioMapper.toDomain(repository.findByDestinoId(destinoId));
    }

    @Override
    public List<Itinerario> getFavoritos() {
        return ItinerarioMapper.toDomain(repository.findByFavoritoTrue());
    }
}
