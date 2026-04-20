package es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.mapper;

import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.Itinerario;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.ItinerarioId;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.ItemItinerario;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.db.jpa.entity.ItinerarioJpaEntity;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.db.jpa.entity.ItemItinerarioJpaEntity;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ItinerarioMapper {

    public static ItinerarioJpaEntity toEntity(Itinerario itinerario) {
        ItinerarioId id = itinerario.getId();
        ItinerarioJpaEntity entity = ItinerarioJpaEntity.builder()
                .id(id != null ? id.getValue() : null)
                .nombre(itinerario.getNombre())
                .destinoId(itinerario.getDestinoId())
                .nombreDestino(itinerario.getNombreDestino())
                .duracion(itinerario.getDuracion())
                .presupuesto(itinerario.getPresupuesto())
                .preferencias(itinerario.getPreferencias())
                .favorito(itinerario.isFavorito())
                .fechaCreacion(itinerario.getFechaCreacion())
                .build();

        if (itinerario.getItems() != null) {
            List<ItemItinerarioJpaEntity> items = itinerario.getItems().stream()
                    .map(item -> {
                        ItemItinerarioJpaEntity ie = ItemItinerarioJpaEntity.builder()
                                .dia(item.getDia())
                                .lugarTuristicoId(item.getLugarTuristicoId())
                                .nombreLugar(item.getNombreLugar())
                                .tipo(item.getTipo())
                                .precio(item.getPrecio())
                                .duracionVisita(item.getDuracionVisita())
                                .itinerario(entity)
                                .build();
                        return ie;
                    }).collect(Collectors.toList());
            entity.setItems(items);
        }
        return entity;
    }

    public static Itinerario toDomain(ItinerarioJpaEntity entity) {
        List<ItemItinerario> items = new ArrayList<>();
        if (entity.getItems() != null) {
            items = entity.getItems().stream()
                    .map(ie -> ItemItinerario.builder()
                            .dia(ie.getDia())
                            .lugarTuristicoId(ie.getLugarTuristicoId())
                            .nombreLugar(ie.getNombreLugar())
                            .tipo(ie.getTipo())
                            .precio(ie.getPrecio())
                            .duracionVisita(ie.getDuracionVisita())
                            .build())
                    .collect(Collectors.toList());
        }

        return Itinerario.builder()
                .id(new ItinerarioId(entity.getId()))
                .nombre(entity.getNombre())
                .destinoId(entity.getDestinoId())
                .nombreDestino(entity.getNombreDestino())
                .duracion(entity.getDuracion())
                .presupuesto(entity.getPresupuesto())
                .preferencias(entity.getPreferencias())
                .favorito(entity.getFavorito() != null && entity.getFavorito())
                .fechaCreacion(entity.getFechaCreacion())
                .items(items)
                .build();
    }

    public static List<Itinerario> toDomain(List<ItinerarioJpaEntity> lista) {
        List<Itinerario> result = new ArrayList<>();
        for (ItinerarioJpaEntity e : lista) {
            result.add(toDomain(e));
        }
        return result;
    }
}
