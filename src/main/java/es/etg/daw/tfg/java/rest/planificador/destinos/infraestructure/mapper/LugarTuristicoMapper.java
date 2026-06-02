package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.mapper;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.lugar.CreateLugarCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.lugar.EditLugarCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristico;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristicoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.entity.DestinoJpaEntity;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.db.jpa.entity.LugarTuristicoJpaEntity;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.dto.lugar.LugarRequest;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.dto.lugar.LugarResponse;

import java.util.ArrayList;
import java.util.List;

public class LugarTuristicoMapper {

    public static CreateLugarCommand toCommand(LugarRequest request) {
        return new CreateLugarCommand(request.nombre(), request.descripcion(), request.tipo(),
                request.precio(), request.duracionVisita(), new DestinoId(request.destinoId()));
    }

    public static EditLugarCommand toCommand(int id, LugarRequest request) {
        return new EditLugarCommand(new LugarTuristicoId(id), request.nombre(), request.descripcion(),
                request.tipo(), request.precio(), request.duracionVisita());
    }

    public static LugarResponse toResponse(LugarTuristico lugar) {
        return new LugarResponse(lugar.getId().getValue(), lugar.getNombre(), lugar.getDescripcion(),
                lugar.getTipo(), lugar.getPrecio(), lugar.getDuracionVisita(), lugar.getDestinoId().getValue());
    }

    public static LugarTuristicoJpaEntity toEntity(LugarTuristico lugar) {
        DestinoJpaEntity destino = new DestinoJpaEntity();
        destino.setId(lugar.getDestinoId().getValue());
        LugarTuristicoId id = lugar.getId();
        return LugarTuristicoJpaEntity.builder()
                .id(id != null ? id.getValue() : null)
                .nombre(lugar.getNombre())
                .descripcion(lugar.getDescripcion())
                .tipo(lugar.getTipo())
                .precio(lugar.getPrecio())
                .duracionVisita(lugar.getDuracionVisita())
                .destino(destino)
                .build();
    }

    public static LugarTuristico toDomain(LugarTuristicoJpaEntity entity) {
        return LugarTuristico.builder()
                .id(new LugarTuristicoId(entity.getId()))
                .nombre(entity.getNombre())
                .descripcion(entity.getDescripcion())
                .tipo(entity.getTipo())
                .precio(entity.getPrecio())
                .duracionVisita(entity.getDuracionVisita())
                .destinoId(new DestinoId(entity.getDestino().getId()))
                .build();
    }

    public static List<LugarTuristico> toDomain(List<LugarTuristicoJpaEntity> lista) {
        List<LugarTuristico> result = new ArrayList<>();
        for (LugarTuristicoJpaEntity e : lista) {
            result.add(toDomain(e));
        }
        return result;
    }
}
