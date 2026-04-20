package es.etg.daw.tfg.java.rest.planificador.destinos.domain.error;

public class DestinoNotFoundException extends EntityNotFoundException {
    public DestinoNotFoundException(Integer id) {
        super("Destino no encontrado con id: " + id);
    }
}
