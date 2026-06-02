package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.repository.destino;

import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.entity.DestinoJpaEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DestinoEntityJpaRepository extends JpaRepository<DestinoJpaEntity, Integer> {
    DestinoJpaEntity findByNombre(String nombre);
}
