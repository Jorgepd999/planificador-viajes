package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.view;

import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.destino.CreateDestinoCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.destino.EditDestinoCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.lugar.CreateLugarCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.application.command.lugar.EditLugarCommand;
import es.etg.daw.tfg.java.rest.planificador.destinos.application.service.destino.*;
import es.etg.daw.tfg.java.rest.planificador.destinos.application.service.lugar.*;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.Destino;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristico;
import es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.lugar.LugarTuristicoId;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.constants.WebRoutes;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.enums.ModelAttribute;
import es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.enums.ThymView;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.application.command.CreateItinerarioCommand;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.application.service.*;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.Itinerario;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.ItinerarioId;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

@Controller
@RequiredArgsConstructor
public class PlanificadorViewController {

    private final FindDestinoService findDestinoService;
    private final CreateDestinoService createDestinoService;
    private final EditDestinoService editDestinoService;
    private final DeleteDestinoService deleteDestinoService;
    private final FindLugarService findLugarService;
    private final CreateLugarService createLugarService;
    private final EditLugarService editLugarService;
    private final DeleteLugarService deleteLugarService;
    private final FindItinerarioService findItinerarioService;
    private final GenerarItinerarioService generarItinerarioService;
    private final DeleteItinerarioService deleteItinerarioService;
    private final MarcarFavoritoService marcarFavoritoService;

    // ====== HOME ======
    @GetMapping(WebRoutes.HOME)
    public String home() {
        return ThymView.HOME.getPath();
    }

    // ====== DESTINOS ======
    @GetMapping(WebRoutes.DESTINOS_LISTA)
    public String listarDestinos(Model model) {
        model.addAttribute(ModelAttribute.DESTINO_LIST.getName(), findDestinoService.findAll());
        return ThymView.DESTINOS_LISTA.getPath();
    }

    @GetMapping(WebRoutes.DESTINO_NUEVO)
    public String formularioNuevoDestino(Model model) {
        model.addAttribute(ModelAttribute.SINGLE_DESTINO.getName(), new Destino());
        return ThymView.DESTINOS_FORMULARIO_NUEVO.getPath();
    }

    @PostMapping(WebRoutes.DESTINO_NUEVO)
    public String crearDestino(@RequestParam String nombre, @RequestParam String pais,
                               @RequestParam(required = false) String descripcion) {
        createDestinoService.createDestino(new CreateDestinoCommand(nombre, pais, descripcion));
        return "redirect:" + WebRoutes.DESTINOS_LISTA;
    }

    @GetMapping(WebRoutes.DESTINO_EDITAR)
    public String formularioEditarDestino(@PathVariable Integer id, Model model) {
        Destino destino = findDestinoService.getById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));
        model.addAttribute(ModelAttribute.SINGLE_DESTINO.getName(), destino);
        return ThymView.DESTINOS_FORMULARIO_EDITAR.getPath();
    }

    @PostMapping("/web/destinos/editar/{id}")
    public String editarDestino(@PathVariable Integer id, @RequestParam String nombre,
                                @RequestParam String pais, @RequestParam(required = false) String descripcion) {
        editDestinoService.update(new EditDestinoCommand(new DestinoId(id), nombre, pais, descripcion));
        return "redirect:" + WebRoutes.DESTINOS_LISTA;
    }

    @PostMapping(WebRoutes.DESTINO_BORRAR_ID)
    public String borrarDestino(@PathVariable Integer id) {
        deleteDestinoService.delete(new DestinoId(id));
        return "redirect:" + WebRoutes.DESTINOS_LISTA;
    }

    // ====== LUGARES ======
    @GetMapping(WebRoutes.LUGARES_LISTA)
    public String listarLugares(Model model) {
        model.addAttribute(ModelAttribute.LUGAR_LIST.getName(), findLugarService.findAll());
        model.addAttribute(ModelAttribute.DESTINO_LIST.getName(), findDestinoService.findAll());
        return ThymView.LUGARES_LISTA.getPath();
    }

    @GetMapping(WebRoutes.LUGAR_NUEVO)
    public String formularioNuevoLugar(Model model) {
        model.addAttribute(ModelAttribute.SINGLE_LUGAR.getName(), new LugarTuristico());
        model.addAttribute(ModelAttribute.DESTINO_LIST.getName(), findDestinoService.findAll());
        return ThymView.LUGARES_FORMULARIO_NUEVO.getPath();
    }

    @PostMapping(WebRoutes.LUGAR_NUEVO)
    public String crearLugar(@RequestParam String nombre, @RequestParam(required = false) String descripcion,
                             @RequestParam String tipo, @RequestParam double precio,
                             @RequestParam double duracionVisita, @RequestParam int destinoId) {
        createLugarService.createLugar(new CreateLugarCommand(nombre, descripcion, tipo, precio,
                duracionVisita, new es.etg.daw.tfg.java.rest.planificador.destinos.domain.model.destino.DestinoId(destinoId)));
        return "redirect:" + WebRoutes.LUGARES_LISTA;
    }

    @GetMapping(WebRoutes.LUGAR_EDITAR)
    public String formularioEditarLugar(@PathVariable Integer id, Model model) {
        LugarTuristico lugar = findLugarService.getById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));
        model.addAttribute(ModelAttribute.SINGLE_LUGAR.getName(), lugar);
        model.addAttribute(ModelAttribute.DESTINO_LIST.getName(), findDestinoService.findAll());
        return ThymView.LUGARES_FORMULARIO_EDITAR.getPath();
    }

    @PostMapping("/web/lugares/editar/{id}")
    public String editarLugar(@PathVariable Integer id, @RequestParam String nombre,
                              @RequestParam(required = false) String descripcion, @RequestParam String tipo,
                              @RequestParam double precio, @RequestParam double duracionVisita) {
        editLugarService.update(new EditLugarCommand(new LugarTuristicoId(id), nombre, descripcion, tipo, precio, duracionVisita));
        return "redirect:" + WebRoutes.LUGARES_LISTA;
    }

    @PostMapping(WebRoutes.LUGAR_BORRAR_ID)
    public String borrarLugar(@PathVariable Integer id) {
        deleteLugarService.delete(new LugarTuristicoId(id));
        return "redirect:" + WebRoutes.LUGARES_LISTA;
    }

    // ====== ITINERARIOS ======
    @GetMapping(WebRoutes.ITINERARIOS_LISTA)
    public String listarItinerarios(Model model) {
        model.addAttribute(ModelAttribute.ITINERARIO_LIST.getName(), findItinerarioService.findAll());
        return ThymView.ITINERARIOS_LISTA.getPath();
    }

    @GetMapping(WebRoutes.ITINERARIO_NUEVO)
    public String formularioNuevoItinerario(Model model) {
        model.addAttribute(ModelAttribute.DESTINO_LIST.getName(), findDestinoService.findAll());
        return ThymView.ITINERARIO_FORMULARIO_NUEVO.getPath();
    }

    @PostMapping(WebRoutes.ITINERARIO_NUEVO)
    public String generarItinerario(@RequestParam String nombre, @RequestParam int destinoId,
                                    @RequestParam int duracion, @RequestParam double presupuesto,
                                    @RequestParam(required = false) String preferencias) {
        generarItinerarioService.generar(new CreateItinerarioCommand(nombre, destinoId, duracion, presupuesto, preferencias));
        return "redirect:" + WebRoutes.ITINERARIOS_LISTA;
    }

    @GetMapping(WebRoutes.ITINERARIO_VER)
    public String verItinerario(@PathVariable Integer id, Model model) {
        Itinerario itinerario = findItinerarioService.getById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));
        model.addAttribute(ModelAttribute.SINGLE_ITINERARIO.getName(), itinerario);
        return ThymView.ITINERARIO_VER.getPath();
    }

    @PostMapping(WebRoutes.ITINERARIO_BORRAR_ID)
    public String borrarItinerario(@PathVariable Integer id) {
        deleteItinerarioService.delete(new ItinerarioId(id));
        return "redirect:" + WebRoutes.ITINERARIOS_LISTA;
    }

    @PostMapping(WebRoutes.ITINERARIO_FAVORITO)
    public String toggleFavorito(@PathVariable Integer id) {
        marcarFavoritoService.toggleFavorito(id);
        return "redirect:" + WebRoutes.ITINERARIOS_LISTA;
    }
}
