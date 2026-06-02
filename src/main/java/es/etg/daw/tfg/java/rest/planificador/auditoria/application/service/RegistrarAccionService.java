package es.etg.daw.tfg.java.rest.planificador.auditoria.application.service;

import es.etg.daw.tfg.java.rest.planificador.auditoria.application.useCase.RegistrarAccionUseCase;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class RegistrarAccionService {
    private final RegistrarAccionUseCase registrarAccionUseCase;

    public void registrar(String username, String descripcion) {
        registrarAccionUseCase.registrar(username, descripcion);
    }
}
