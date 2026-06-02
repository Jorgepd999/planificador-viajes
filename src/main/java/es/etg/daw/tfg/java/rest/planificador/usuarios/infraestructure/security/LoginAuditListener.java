package es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.security;

import es.etg.daw.tfg.java.rest.planificador.auditoria.application.service.RegistrarAccionService;
import lombok.RequiredArgsConstructor;
import org.springframework.context.event.EventListener;
import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.stereotype.Component;

/**
 * Registra en el historial cada inicio de sesion correcto.
 * Spring Security publica un AuthenticationSuccessEvent al autenticarse.
 */
@Component
@RequiredArgsConstructor
public class LoginAuditListener {

    private final RegistrarAccionService registrarAccionService;

    @EventListener
    public void onAuthenticationSuccess(AuthenticationSuccessEvent event) {
        String username = event.getAuthentication().getName();
        registrarAccionService.registrar(username, "Inició sesión");
    }
}
