package es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.lugar;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.lugar.EditLugarCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.error.LugarTuristicoNotFoundException;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristico;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository.LugarTuristicoRepository;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class EditLugarUseCase {
    private final LugarTuristicoRepository lugarRepository;

    public LugarTuristico update(EditLugarCommand comando) {
        LugarTuristico existing = lugarRepository.getById(comando.id())
                .orElseThrow(() -> new LugarTuristicoNotFoundException(comando.id().getValue()));
        existing.setNombre(comando.nombre());
        existing.setDescripcion(comando.descripcion());
        existing.setTipo(comando.tipo());
        existing.setPrecio(comando.precio());
        existing.setDuracionVisita(comando.duracionVisita());
        return lugarRepository.save(existing);
    }
}
