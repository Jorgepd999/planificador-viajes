package es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.mapper;

import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Rol;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.Usuario;
import es.etg.daw.tfg.java.rest.planificador.usuarios.domain.model.UsuarioId;
import es.etg.daw.tfg.java.rest.planificador.usuarios.infraestructure.db.jpa.entity.UsuarioJpaEntity;

import java.util.ArrayList;
import java.util.List;

public class UsuarioMapper {

    public static UsuarioJpaEntity toEntity(Usuario usuario) {
        UsuarioId id = usuario.getId();
        return UsuarioJpaEntity.builder()
                .id(id != null ? id.getValue() : null)
                .username(usuario.getUsername())
                .password(usuario.getPassword())
                .nombre(usuario.getNombre())
                .email(usuario.getEmail())
                .rol(usuario.getRol().name())
                .enabled(usuario.isEnabled())
                .build();
    }

    public static Usuario toDomain(UsuarioJpaEntity entity) {
        return Usuario.builder()
                .id(new UsuarioId(entity.getId()))
                .username(entity.getUsername())
                .password(entity.getPassword())
                .nombre(entity.getNombre())
                .email(entity.getEmail())
                .rol(Rol.valueOf(entity.getRol()))
                .enabled(entity.isEnabled())
                .build();
    }

    public static List<Usuario> toDomain(List<UsuarioJpaEntity> lista) {
        List<Usuario> result = new ArrayList<>();
        for (UsuarioJpaEntity e : lista) {
            result.add(toDomain(e));
        }
        return result;
    }
}
