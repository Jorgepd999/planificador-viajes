package es.etg.daw.tfg.java.rest.planificador.auditoria.infraestructure.db.jpa.repository;

import es.etg.daw.tfg.java.rest.planificador.auditoria.domain.model.Accion;
import es.etg.daw.tfg.java.rest.planificador.auditoria.domain.repository.AccionRepository;
import es.etg.daw.tfg.java.rest.planificador.auditoria.infraestructure.mapper.AccionMapper;
import lombok.RequiredArgsConstructor;

import java.util.List;

@RequiredArgsConstructor
public class AccionJpaRepositoryImpl implements AccionRepository {

    private final AccionEntityJpaRepository repository;

    @Override
    public Accion save(Accion accion) {
        return AccionMapper.toDomain(repository.save(AccionMapper.toEntity(accion)));
    }

    @Override
    public List<Accion> getAllRecientes() {
        return AccionMapper.toDomain(repository.findAllByOrderByFechaDesc());
    }
}
