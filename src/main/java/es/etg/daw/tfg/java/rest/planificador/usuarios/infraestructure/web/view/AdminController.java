package es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.web.view;

import es.etg.daw.tfg.java.rest.planificador.auditoria.application.service.ListarAccionesService;
import es.etg.daw.tfg.java.rest.planificador.auditoria.application.service.RegistrarAccionService;
import es.etg.daw.tfg.java.rest.planificador.usuarios.application.service.CambiarRolService;
import es.etg.daw.tfg.java.rest.planificador.usuarios.application.service.LoadUsuarioService;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Rol;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class AdminController {

    private final LoadUsuarioService loadUsuarioService;
    private final CambiarRolService cambiarRolService;
    private final ListarAccionesService listarAccionesService;
    private final RegistrarAccionService registrarAccionService;

    @GetMapping("/admin/usuarios")
    public String usuarios(Model model) {
        model.addAttribute("usuarios", loadUsuarioService.findAll());
        model.addAttribute("roles", Rol.values());
        return "admin-usuarios";
    }

    @PostMapping("/admin/usuarios/rol")
    public String cambiarRol(@RequestParam String username, @RequestParam String rol, Principal principal) {
        cambiarRolService.cambiarRol(username, Rol.valueOf(rol));
        String admin = principal != null ? principal.getName() : "anonimo";
        registrarAccionService.registrar(admin, "Cambió el rol de '" + username + "' a " + rol);
        return "redirect:/admin/usuarios";
    }

    @GetMapping("/admin/historial")
    public String historial(Model model) {
        model.addAttribute("acciones", listarAccionesService.listar());
        return "admin-historial";
    }
}
