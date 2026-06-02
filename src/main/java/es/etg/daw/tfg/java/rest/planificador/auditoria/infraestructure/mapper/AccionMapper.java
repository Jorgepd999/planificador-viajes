package es.etg.daw.tfg.java.rest.planificador.auditoria.infraestructure.mapper;

import es.etg.daw.tfg.java.rest.planificador.auditoria.domain.model.Accion;
import es.etg.daw.tfg.java.rest.planificador.auditoria.domain.model.AccionId;
import es.etg.daw.tfg.java.rest.planificador.auditoria.infraestructure.db.jpa.entity.AccionJpaEntity;

import java.util.ArrayList;
import java.util.List;

public class AccionMapper {

    public static AccionJpaEntity toEntity(Accion accion) {
        AccionId id = accion.getId();
        return AccionJpaEntity.builder()
                .id(id != null ? id.getValue() : null)
                .username(accion.getUsername())
                .descripcion(accion.getDescripcion())
                .fecha(accion.getFecha())
                .build();
    }

    public static Accion toDomain(AccionJpaEntity entity) {
        return Accion.builder()
                .id(new AccionId(entity.getId()))
                .username(entity.getUsername())
                .descripcion(entity.getDescripcion())
                .fecha(entity.getFecha())
                .build();
    }

    public static List<Accion> toDomain(List<AccionJpaEntity> lista) {
        List<Accion> result = new ArrayList<>();
        for (AccionJpaEntity e : lista) {
            result.add(toDomain(e));
        }
        return result;
    }
}
