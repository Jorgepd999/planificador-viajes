package es.etg.daw.tfg.java.rest.planificador.auditoria.infraestructure.db.jpa.repository;

import es.etg.daw.tfg.java.rest.planificador.auditoria.infraestructure.db.jpa.entity.AccionJpaEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AccionEntityJpaRepository extends JpaRepository<AccionJpaEntity, Integer> {
    List<AccionJpaEntity> findAllByOrderByFechaDesc();
}
