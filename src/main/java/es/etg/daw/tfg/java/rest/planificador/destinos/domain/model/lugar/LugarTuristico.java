package es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar;

import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class LugarTuristico {
    public LugarTuristico() {}

    private LugarTuristicoId id;
    private String nombre;
    private String descripcion;
    private String tipo;
    private double precio;
    private double duracionVisita;
    private DestinoId destinoId;
}
