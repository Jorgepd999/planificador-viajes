package es.etg.daw.tfg.java.rest.planificador.destinos.application.useCase.destino;

import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.repository.DestinoRepository;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class DeleteDestinoUseCase {
    private final DestinoRepository destinoRepository;

    public void delete(DestinoId id) {
        destinoRepository.deleteById(id);
    }
}
