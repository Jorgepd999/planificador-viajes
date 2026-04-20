package es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.config;

import es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository.LugarTuristicoRepository;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.repository.lugar.LugarTuristicoEntityJpaRepository;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.repository.lugar.LugarTuristicoJpaRepositoryImpl;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.application.useCase.*;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.repository.ItinerarioRepository;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.db.jpa.repository.ItinerarioEntityJpaRepository;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.db.jpa.repository.ItinerarioJpaRepositoryImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@RequiredArgsConstructor
public class ItinerarioConfig {

    private final ItinerarioEntityJpaRepository itinerarioEntityJpaRepository;
    private final LugarTuristicoEntityJpaRepository lugarEntityJpaRepository;

    public ItinerarioRepository itinerarioRepository() {
        return new ItinerarioJpaRepositoryImpl(itinerarioEntityJpaRepository);
    }

    public LugarTuristicoRepository lugarRepository() {
        return new LugarTuristicoJpaRepositoryImpl(lugarEntityJpaRepository);
    }

    @Bean
    public GenerarItinerarioUseCase generarItinerarioUseCase() {
        return new GenerarItinerarioUseCase(itinerarioRepository(), lugarRepository());
    }

    @Bean
    public FindItinerarioUseCase findItinerarioUseCase() {
        return new FindItinerarioUseCase(itinerarioRepository());
    }

    @Bean
    public DeleteItinerarioUseCase deleteItinerarioUseCase() {
        return new DeleteItinerarioUseCase(itinerarioRepository());
    }

    @Bean
    public MarcarFavoritoUseCase marcarFavoritoUseCase() {
        return new MarcarFavoritoUseCase(itinerarioRepository());
    }
}
