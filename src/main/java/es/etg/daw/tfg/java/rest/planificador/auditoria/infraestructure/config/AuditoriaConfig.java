package es.etg.daw.tfg.java.rest.planificador.auditoria.infraestructure.config;

import es.etg.daw.tfg.java.rest.planificador.auditoria.application.useCase.ListarAccionesUseCase;
import es.etg.daw.tfg.java.rest.planificador.auditoria.application.useCase.RegistrarAccionUseCase;
import es.etg.daw.tfg.java.rest.planificador.auditoria.domain.repository.AccionRepository;
import es.etg.daw.tfg.java.rest.planificador.auditoria.infraestructure.db.jpa.repository.AccionEntityJpaRepository;
import es.etg.daw.tfg.java.rest.planificador.auditoria.infraestructure.db.jpa.repository.AccionJpaRepositoryImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@RequiredArgsConstructor
public class AuditoriaConfig {

    private final AccionEntityJpaRepository accionEntityJpaRepository;

    public AccionRepository accionRepository() {
        return new AccionJpaRepositoryImpl(accionEntityJpaRepository);
    }

    @Bean
    public RegistrarAccionUseCase registrarAccionUseCase() {
        return new RegistrarAccionUseCase(accionRepository());
    }

    @Bean
    public ListarAccionesUseCase listarAccionesUseCase() {
        return new ListarAccionesUseCase(accionRepository());
    }
}
