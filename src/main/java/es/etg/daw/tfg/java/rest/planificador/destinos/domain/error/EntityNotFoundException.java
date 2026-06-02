package es.etg.daw.tfg.java.rest.planificador.destinos.domain.error;

public class EntityNotFoundException extends RuntimeException {
    public EntityNotFoundException(String message) {
        super(message);
    }
}
