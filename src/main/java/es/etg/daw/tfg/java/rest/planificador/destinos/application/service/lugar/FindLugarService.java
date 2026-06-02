package es.etg.daw.tfg.java.rest.planificador.destinos.application.service.lugar;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.lugar.FindLugarUseCase;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristico;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristicoId;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class FindLugarService {
    private final FindLugarUseCase findLugarUseCase;

    public List<LugarTuristico> findAll() {
        return findLugarUseCase.findAll();
    }

    public Optional<LugarTuristico> getById(int id) {
        return findLugarUseCase.findById(new LugarTuristicoId(id));
    }

    public List<LugarTuristico> findByDestino(int destinoId) {
        return findLugarUseCase.findByDestino(new DestinoId(destinoId));
    }

    public List<LugarTuristico> findByDestinoAndTipo(int destinoId, String tipo) {
        return findLugarUseCase.findByDestinoAndTipo(new DestinoId(destinoId), tipo);
    }
}
