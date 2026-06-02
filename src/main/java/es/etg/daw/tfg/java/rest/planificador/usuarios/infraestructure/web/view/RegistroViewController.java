package es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.web.view;

import es.etg.daw.tfg.java.rest.planificador.auditoria.application.service.RegistrarAccionService;
import es.etg.daw.tfg.java.rest.planificador.usuarios.application.command.RegisterUsuarioCommand;
import es.etg.daw.tfg.java.rest.planificador.usuarios.application.service.LoadUsuarioService;
import es.etg.daw.tfg.java.rest.planificador.usuarios.application.service.RegisterUsuarioService;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Rol;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class RegistroViewController {

    private final RegisterUsuarioService registerUsuarioService;
    private final LoadUsuarioService loadUsuarioService;
    private final RegistrarAccionService registrarAccionService;

    @GetMapping("/registro")
    public String mostrarRegistro() {
        return "registro";
    }

    @PostMapping("/registro")
    public String registrar(@RequestParam String username,
                            @RequestParam String password,
                            @RequestParam String nombre,
                            @RequestParam(required = false) String email) {
        // Los usuarios que se registran solos siempre son USER (sin elegir rol).
        if (loadUsuarioService.loadByUsername(username).isPresent()) {
            return "redirect:/registro?error";
        }
        registerUsuarioService.register(new RegisterUsuarioCommand(username, password, nombre, email, Rol.USER));
        registrarAccionService.registrar(username, "Se registró un nuevo usuario");
        return "redirect:/login?registered";
    }
}
