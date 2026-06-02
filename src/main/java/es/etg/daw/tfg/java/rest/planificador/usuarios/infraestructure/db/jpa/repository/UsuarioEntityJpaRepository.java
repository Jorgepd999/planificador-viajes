package es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.db.jpa.repository;

import es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.db.jpa.entity.UsuarioJpaEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UsuarioEntityJpaRepository extends JpaRepository<UsuarioJpaEntity, Integer> {
    Optional<UsuarioJpaEntity> findByUsername(String username);
}
