package es.etg.daw.tfg.java.rest.planificador.destinos.application.service.destino;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.destino.FindDestinoUseCase;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.Destino;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class FindDestinoService {
    private final FindDestinoUseCase findDestinoUseCase;

    public List<Destino> findAll() {
        return findDestinoUseCase.findAll();
    }

    public Optional<Destino> getById(int id) {
        return findDestinoUseCase.findById(new DestinoId(id));
    }
}
