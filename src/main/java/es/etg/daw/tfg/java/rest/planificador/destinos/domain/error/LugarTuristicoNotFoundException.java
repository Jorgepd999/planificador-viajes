package es.etg.daw.tfg.java.rest.planificador.destinos.domain.error;

public class LugarTuristicoNotFoundException extends EntityNotFoundException {
    public LugarTuristicoNotFoundException(Integer id) {
        super("Lugar turístico no encontrado con id: " + id);
    }
}
