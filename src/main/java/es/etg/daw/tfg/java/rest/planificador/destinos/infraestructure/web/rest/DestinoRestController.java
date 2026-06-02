package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.rest;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.service.destino.*;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.Destino;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.mapper.DestinoMapper;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.dto.destino.DestinoRequest;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.dto.destino.DestinoResponse;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/destinos")
@RequiredArgsConstructor
public class DestinoRestController {

    private final CreateDestinoService createDestinoService;
    private final FindDestinoService findDestinoService;
    private final EditDestinoService editDestinoService;
    private final DeleteDestinoService deleteDestinoService;

    @Value("${api.version}")
    private String apiVersion;

    private void checkApiVersion() {
        if (!"1.0".equals(apiVersion)) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Versión del API incorrecta: " + apiVersion);
        }
    }

    @PostMapping
    public ResponseEntity<DestinoResponse> createDestino(@Valid @RequestBody DestinoRequest request) {
        checkApiVersion();
        Destino destino = createDestinoService.createDestino(DestinoMapper.toCommand(request));
        return ResponseEntity.status(HttpStatus.CREATED).body(DestinoMapper.toResponse(destino));
    }

    @GetMapping
    public List<DestinoResponse> allDestinos() {
        checkApiVersion();
        return findDestinoService.findAll().stream().map(DestinoMapper::toResponse).toList();
    }

    @GetMapping("/{id}")
    public DestinoResponse findById(@PathVariable int id) {
        checkApiVersion();
        Destino destino = findDestinoService.getById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Destino no encontrado con id: " + id));
        return DestinoMapper.toResponse(destino);
    }

    @PutMapping("/{id}")
    public DestinoResponse editDestino(@PathVariable int id, @Valid @RequestBody DestinoRequest request) {
        checkApiVersion();
        Destino destino = editDestinoService.update(DestinoMapper.toCommand(id, request));
        return DestinoMapper.toResponse(destino);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> deleteDestino(@PathVariable int id) {
        checkApiVersion();
        deleteDestinoService.delete(new DestinoId(id));
        return ResponseEntity.noContent().build();
    }

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public Map<String, String> handleValidation(MethodArgumentNotValidException ex) {
        Map<String, String> errors = new HashMap<>();
        ex.getBindingResult().getAllErrors().forEach(e -> {
            String field = ((FieldError) e).getField();
            errors.put(field, e.getDefaultMessage());
        });
        return errors;
    }
}
