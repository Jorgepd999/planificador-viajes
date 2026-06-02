package es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.lugar;

import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristicoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository.LugarTuristicoRepository;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class DeleteLugarUseCase {
    private final LugarTuristicoRepository lugarRepository;

    public void delete(LugarTuristicoId id) {
        lugarRepository.deleteById(id);
    }
}
