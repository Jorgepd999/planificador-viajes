package es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class Destino {
    public Destino() {}

    private DestinoId id;
    private String nombre;
    private String pais;
    private String descripcion;
}
