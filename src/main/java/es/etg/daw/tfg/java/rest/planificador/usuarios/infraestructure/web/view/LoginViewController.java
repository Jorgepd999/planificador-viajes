package es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.web.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginViewController {

    @GetMapping("/login")
    public String login() {
        return "login";
    }
}
