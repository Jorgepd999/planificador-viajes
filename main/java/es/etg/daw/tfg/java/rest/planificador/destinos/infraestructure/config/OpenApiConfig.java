package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.config;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class OpenApiConfig {

    @Bean
    public OpenAPI planificadorOpenAPI() {
        return new OpenAPI()
                .info(new Info()
                        .title("Planificador de Viajes API")
                        .version("1.0")
                        .description("API REST para la gestión de destinos, lugares turísticos e itinerarios de viaje."));
    }
}
