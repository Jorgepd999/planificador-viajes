package es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.csrf.CsrfTokenRequestAttributeHandler;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
            .authorizeHttpRequests(auth -> auth
                // Recursos públicos: login, registro, estáticos y consola H2
                .requestMatchers("/login", "/registro", "/css/**", "/js/**", "/images/**", "/webjars/**").permitAll()
                .requestMatchers("/h2-console/**").permitAll()
                // Zona de administración y documentación API: solo ADMIN
                .requestMatchers("/admin/**").hasRole("ADMIN")
                .requestMatchers("/swagger-ui.html", "/swagger-ui/**", "/v3/api-docs/**", "/api-docs/**").hasRole("ADMIN")
                // Gestión del catálogo (destinos y lugares) reservada a ADMIN.
                // Los itinerarios NO se restringen: cada usuario crea/borra los suyos.
                .requestMatchers(HttpMethod.POST, "/web/destinos/**", "/web/lugares/**").hasRole("ADMIN")
                .requestMatchers(HttpMethod.POST, "/api/destinos/**", "/api/lugares/**").hasRole("ADMIN")
                .requestMatchers(HttpMethod.PUT, "/api/destinos/**", "/api/lugares/**").hasRole("ADMIN")
                .requestMatchers(HttpMethod.DELETE, "/api/destinos/**", "/api/lugares/**").hasRole("ADMIN")
                // El resto requiere estar autenticado (cualquier rol)
                .anyRequest().authenticated())
            .formLogin(form -> form
                .loginPage("/login")
                .defaultSuccessUrl("/web/menu", true)
                .permitAll())
            .logout(logout -> logout
                .logoutSuccessUrl("/login?logout")
                .permitAll())
            // CSRF activo para la UI Thymeleaf (token inyectado automáticamente en los formularios).
            // Usamos el handler "plano" (token crudo y estable) en vez del XOR por defecto,
            // que con formularios server-side de Thymeleaf daba "Invalid CSRF token".
            // Se desactiva solo para la API REST y la consola H2.
            .csrf(csrf -> csrf
                .csrfTokenRequestHandler(new CsrfTokenRequestAttributeHandler())
                .ignoringRequestMatchers("/api/**", "/h2-console/**"))
            // Permite que la consola H2 se renderice dentro de un frame del mismo origen.
            .headers(headers -> headers.frameOptions(frame -> frame.sameOrigin()));

        return http.build();
    }
}
