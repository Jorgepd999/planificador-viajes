package es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.db.jpa.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Data
@AllArgsConstructor
@Builder
@Table(name = "USUARIOS")
public class UsuarioJpaEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "username", nullable = false, unique = true, length = 50)
    private String username;

    @Column(name = "password", nullable = false, length = 100)
    private String password;

    @Column(name = "nombre", nullable = false, length = 100)
    private String nombre;

    @Column(name = "email", length = 150)
    private String email;

    @Column(name = "rol", nullable = false, length = 20)
    private String rol;

    @Column(name = "enabled", nullable = false)
    private boolean enabled;

    public UsuarioJpaEntity() {}
}
