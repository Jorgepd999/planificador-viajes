package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.config;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.destino.*;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository.DestinoRepository;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.repository.destino.DestinoEntityJpaRepository;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.repository.destino.DestinoJpaRepositoryImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@RequiredArgsConstructor
public class DestinoConfig {

    private final DestinoEntityJpaRepository destinoEntityJpaRepository;

    public DestinoRepository destinoRepository() {
        return new DestinoJpaRepositoryImpl(destinoEntityJpaRepository);
    }

    @Bean
    public CreateDestinoUseCase createDestinoUseCase() {
        return new CreateDestinoUseCase(destinoRepository());
    }

    @Bean
    public FindDestinoUseCase findDestinoUseCase() {
        return new FindDestinoUseCase(destinoRepository());
    }

    @Bean
    public EditDestinoUseCase editDestinoUseCase() {
        return new EditDestinoUseCase(destinoRepository());
    }

    @Bean
    public DeleteDestinoUseCase deleteDestinoUseCase() {
        return new DeleteDestinoUseCase(destinoRepository());
    }
}
