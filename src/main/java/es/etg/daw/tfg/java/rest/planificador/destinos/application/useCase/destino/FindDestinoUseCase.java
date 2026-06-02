package es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.destino;

import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.Destino;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository.DestinoRepository;
import lombok.AllArgsConstructor;

import java.util.List;
import java.util.Optional;

@AllArgsConstructor
public class FindDestinoUseCase {
    private final DestinoRepository destinoRepository;

    public List<Destino> findAll() {
        return destinoRepository.getAll();
    }

    public Optional<Destino> findById(DestinoId id) {
        return destinoRepository.getById(id);
    }
}
