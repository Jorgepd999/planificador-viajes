package es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.error;

public class ItinerarioNotFoundException extends RuntimeException {
    public ItinerarioNotFoundException(Integer id) {
        super("Itinerario no encontrado con id: " + id);
    }
}
