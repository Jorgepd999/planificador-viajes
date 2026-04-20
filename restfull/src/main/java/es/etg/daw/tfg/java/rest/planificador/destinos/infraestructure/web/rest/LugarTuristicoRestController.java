package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.rest;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.service.lugar.*;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristico;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristicoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.mapper.LugarTuristicoMapper;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.dto.lugar.LugarRequest;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.dto.lugar.LugarResponse;
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
@RequestMapping("/api/lugares")
@RequiredArgsConstructor
public class LugarTuristicoRestController {

    private final CreateLugarService createLugarService;
    private final FindLugarService findLugarService;
    private final EditLugarService editLugarService;
    private final DeleteLugarService deleteLugarService;

    @Value("${api.version}")
    private String apiVersion;

    private void checkApiVersion() {
        if (!"1.0".equals(apiVersion)) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Versión del API incorrecta: " + apiVersion);
        }
    }

    @PostMapping
    public ResponseEntity<LugarResponse> createLugar(@Valid @RequestBody LugarRequest request) {
        checkApiVersion();
        LugarTuristico lugar = createLugarService.createLugar(LugarTuristicoMapper.toCommand(request));
        return ResponseEntity.status(HttpStatus.CREATED).body(LugarTuristicoMapper.toResponse(lugar));
    }

    @GetMapping
    public List<LugarResponse> allLugares() {
        checkApiVersion();
        return findLugarService.findAll().stream().map(LugarTuristicoMapper::toResponse).toList();
    }

    @GetMapping("/{id}")
    public LugarResponse findById(@PathVariable int id) {
        checkApiVersion();
        LugarTuristico lugar = findLugarService.getById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Lugar no encontrado con id: " + id));
        return LugarTuristicoMapper.toResponse(lugar);
    }

    @GetMapping("/destino/{destinoId}")
    public List<LugarResponse> findByDestino(@PathVariable int destinoId) {
        checkApiVersion();
        return findLugarService.findByDestino(destinoId).stream().map(LugarTuristicoMapper::toResponse).toList();
    }

    @GetMapping("/destino/{destinoId}/tipo/{tipo}")
    public List<LugarResponse> findByDestinoAndTipo(@PathVariable int destinoId, @PathVariable String tipo) {
        checkApiVersion();
        return findLugarService.findByDestinoAndTipo(destinoId, tipo).stream().map(LugarTuristicoMapper::toResponse).toList();
    }

    @PutMapping("/{id}")
    public LugarResponse editLugar(@PathVariable int id, @Valid @RequestBody LugarRequest request) {
        checkApiVersion();
        LugarTuristico lugar = editLugarService.update(LugarTuristicoMapper.toCommand(id, request));
        return LugarTuristicoMapper.toResponse(lugar);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> deleteLugar(@PathVariable int id) {
        checkApiVersion();
        deleteLugarService.delete(new LugarTuristicoId(id));
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
