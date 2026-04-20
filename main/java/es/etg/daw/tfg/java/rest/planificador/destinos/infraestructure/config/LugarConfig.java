package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.config;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.lugar.*;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository.LugarTuristicoRepository;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.repository.lugar.LugarTuristicoEntityJpaRepository;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.repository.lugar.LugarTuristicoJpaRepositoryImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@RequiredArgsConstructor
public class LugarConfig {

    private final LugarTuristicoEntityJpaRepository lugarEntityJpaRepository;

    public LugarTuristicoRepository lugarRepository() {
        return new LugarTuristicoJpaRepositoryImpl(lugarEntityJpaRepository);
    }

    @Bean
    public CreateLugarUseCase createLugarUseCase() {
        return new CreateLugarUseCase(lugarRepository());
    }

    @Bean
    public FindLugarUseCase findLugarUseCase() {
        return new FindLugarUseCase(lugarRepository());
    }

    @Bean
    public EditLugarUseCase editLugarUseCase() {
        return new EditLugarUseCase(lugarRepository());
    }

    @Bean
    public DeleteLugarUseCase deleteLugarUseCase() {
        return new DeleteLugarUseCase(lugarRepository());
    }
}
