package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.repository.lugar;

import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.entity.LugarTuristicoJpaEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface LugarTuristicoEntityJpaRepository extends JpaRepository<LugarTuristicoJpaEntity, Integer> {
    List<LugarTuristicoJpaEntity> findByDestinoId(Integer destinoId);
    List<LugarTuristicoJpaEntity> findByDestinoIdAndTipo(Integer destinoId, String tipo);
}
