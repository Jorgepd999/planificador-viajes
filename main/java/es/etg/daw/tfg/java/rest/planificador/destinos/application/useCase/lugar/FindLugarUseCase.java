package es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.lugar;

import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristico;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristicoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository.LugarTuristicoRepository;
import lombok.AllArgsConstructor;

import java.util.List;
import java.util.Optional;

@AllArgsConstructor
public class FindLugarUseCase {
    private final LugarTuristicoRepository lugarRepository;

    public List<LugarTuristico> findAll() {
        return lugarRepository.getAll();
    }

    public Optional<LugarTuristico> findById(LugarTuristicoId id) {
        return lugarRepository.getById(id);
    }

    public List<LugarTuristico> findByDestino(DestinoId destinoId) {
        return lugarRepository.getByDestinoId(destinoId);
    }

    public List<LugarTuristico> findByDestinoAndTipo(DestinoId destinoId, String tipo) {
        return lugarRepository.getByDestinoIdAndTipo(destinoId, tipo);
    }
}
