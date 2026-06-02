package es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.security;

import es.etg.daw.tfg.java.rest.planificador.usuarios.application.service.LoadUsuarioService;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Usuario;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UsuarioDetailsService implements UserDetailsService {

    private final LoadUsuarioService loadUsuarioService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Usuario usuario = loadUsuarioService.loadByUsername(username)
                .orElseThrow(() -> new UsernameNotFoundException("Usuario no encontrado: " + username));

        return User.builder()
                .username(usuario.getUsername())
                .password(usuario.getPassword())
                .roles(usuario.getRol().name())
                .disabled(!usuario.isEnabled())
                .build();
    }
}
