package es.etg.daw.tfg.java.rest.planificador;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@EnableCaching
@SpringBootApplication
public class PlanificadorApplication {

    public static void main(String[] args) {
        SpringApplication.run(PlanificadorApplication.class, args);
    }

}
