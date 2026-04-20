package es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.db.jpa.repository;

import es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.db.jpa.entity.ItinerarioJpaEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ItinerarioEntityJpaRepository extends JpaRepository<ItinerarioJpaEntity, Integer> {
    List<ItinerarioJpaEntity> findByDestinoId(Integer destinoId);
    List<ItinerarioJpaEntity> findByFavoritoTrue();
}
