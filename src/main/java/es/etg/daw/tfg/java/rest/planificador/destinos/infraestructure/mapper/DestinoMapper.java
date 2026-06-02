package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.mapper;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.destino.CreateDestinoCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.destino.EditDestinoCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.Destino;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.entity.DestinoJpaEntity;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.dto.destino.DestinoRequest;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.dto.destino.DestinoResponse;

import java.util.ArrayList;
import java.util.List;

public class DestinoMapper {

    public static CreateDestinoCommand toCommand(DestinoRequest request) {
        return new CreateDestinoCommand(request.nombre(), request.pais(), request.descripcion());
    }

    public static EditDestinoCommand toCommand(int id, DestinoRequest request) {
        return new EditDestinoCommand(new DestinoId(id), request.nombre(), request.pais(), request.descripcion());
    }

    public static DestinoResponse toResponse(Destino destino) {
        return new DestinoResponse(destino.getId().getValue(), destino.getNombre(), destino.getPais(), destino.getDescripcion());
    }

    public static DestinoJpaEntity toEntity(Destino destino) {
        DestinoId id = destino.getId();
        return DestinoJpaEntity.builder()
                .id(id != null ? id.getValue() : null)
                .nombre(destino.getNombre())
                .pais(destino.getPais())
                .descripcion(destino.getDescripcion())
                .build();
    }

    public static Destino toDomain(DestinoJpaEntity entity) {
        return Destino.builder()
                .id(new DestinoId(entity.getId()))
                .nombre(entity.getNombre())
                .pais(entity.getPais())
                .descripcion(entity.getDescripcion())
                .build();
    }

    public static List<Destino> toDomain(List<DestinoJpaEntity> lista) {
        List<Destino> result = new ArrayList<>();
        for (DestinoJpaEntity e : lista) {
            result.add(toDomain(e));
        }
        return result;
    }
}
