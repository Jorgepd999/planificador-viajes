package es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.mapper;

import es.etg.daw.tfg.java.rest.planificador.itinerarios.application.command.CreateItinerarioCommand;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.Itinerario;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.web.dto.ItinerarioRequest;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.web.dto.ItinerarioResponse;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.web.dto.ItemItinerarioResponse;

import java.util.List;
import java.util.stream.Collectors;

public class ItinerarioWebMapper {

    public static CreateItinerarioCommand toCommand(ItinerarioRequest request) {
        return new CreateItinerarioCommand(request.nombre(), request.destinoId(),
                request.duracion(), request.presupuesto(), request.preferencias());
    }

    public static ItinerarioResponse toResponse(Itinerario itinerario) {
        List<ItemItinerarioResponse> items = itinerario.getItems() == null ? List.of() :
                itinerario.getItems().stream()
                        .map(item -> new ItemItinerarioResponse(item.getDia(), item.getLugarTuristicoId(),
                                item.getNombreLugar(), item.getTipo(), item.getPrecio(), item.getDuracionVisita()))
                        .collect(Collectors.toList());

        return new ItinerarioResponse(itinerario.getId().getValue(), itinerario.getNombre(),
                itinerario.getDestinoId(), itinerario.getNombreDestino(), itinerario.getDuracion(),
                itinerario.getPresupuesto(), itinerario.getPreferencias(), itinerario.isFavorito(),
                itinerario.getFechaCreacion(), items);
    }
}
