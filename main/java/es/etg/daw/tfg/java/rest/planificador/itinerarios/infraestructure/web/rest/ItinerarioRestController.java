package es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.web.rest;

import es.etg.daw.tfg.java.rest.planificador.itinerarios.application.service.*;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.Itinerario;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.ItinerarioId;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.mapper.ItinerarioWebMapper;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.web.dto.ItinerarioRequest;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.web.dto.ItinerarioResponse;
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
@RequestMapping("/api/itinerarios")
@RequiredArgsConstructor
public class ItinerarioRestController {

    private final GenerarItinerarioService generarItinerarioService;
    private final FindItinerarioService findItinerarioService;
    private final DeleteItinerarioService deleteItinerarioService;
    private final MarcarFavoritoService marcarFavoritoService;

    @Value("${api.version}")
    private String apiVersion;

    private void checkApiVersion() {
        if (!"1.0".equals(apiVersion)) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Versión del API incorrecta: " + apiVersion);
        }
    }

    @PostMapping
    public ResponseEntity<ItinerarioResponse> generar(@Valid @RequestBody ItinerarioRequest request) {
        checkApiVersion();
        Itinerario itinerario = generarItinerarioService.generar(ItinerarioWebMapper.toCommand(request));
        return ResponseEntity.status(HttpStatus.CREATED).body(ItinerarioWebMapper.toResponse(itinerario));
    }

    @GetMapping
    public List<ItinerarioResponse> allItinerarios() {
        checkApiVersion();
        return findItinerarioService.findAll().stream().map(ItinerarioWebMapper::toResponse).toList();
    }

    @GetMapping("/{id}")
    public ItinerarioResponse findById(@PathVariable int id) {
        checkApiVersion();
        Itinerario itinerario = findItinerarioService.getById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Itinerario no encontrado con id: " + id));
        return ItinerarioWebMapper.toResponse(itinerario);
    }

    @GetMapping("/favoritos")
    public List<ItinerarioResponse> favoritos() {
        checkApiVersion();
        return findItinerarioService.findFavoritos().stream().map(ItinerarioWebMapper::toResponse).toList();
    }

    @PutMapping("/{id}/favorito")
    public ItinerarioResponse toggleFavorito(@PathVariable int id) {
        checkApiVersion();
        return ItinerarioWebMapper.toResponse(marcarFavoritoService.toggleFavorito(id));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> deleteItinerario(@PathVariable int id) {
        checkApiVersion();
        deleteItinerarioService.delete(new ItinerarioId(id));
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
