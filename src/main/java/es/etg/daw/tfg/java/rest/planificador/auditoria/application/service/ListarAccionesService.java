package es.etg.daw.tfg.java.rest.planificador.auditoria.application.service;

import es.etg.daw.tfg.java.rest.planificador.auditoria.application.useCase.ListarAccionesUseCase;
import es.etg.daw.tfg.java.rest.planificador.auditoria.domain.model.Accion;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ListarAccionesService {
    private final ListarAccionesUseCase listarAccionesUseCase;

    public List<Accion> listar() {
        return listarAccionesUseCase.listar();
    }
}
