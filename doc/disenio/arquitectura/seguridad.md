# Seguridad

## Estado actual

En la versión actual del proyecto, la aplicación **no implementa autenticación ni autorización**. Todos los endpoints REST y las rutas web son accesibles sin restricción. Esta decisión es adecuada para un entorno de desarrollo y demostración académica, pero debe corregirse antes de cualquier despliegue en producción.

---

## Propuesta de implementación con Spring Security

Se propone incorporar `spring-boot-starter-security` con las siguientes características:

### Roles de usuario
| Rol | Permisos |
|---|---|
| `ADMIN` | Acceso completo: crear, editar, eliminar destinos, lugares e itinerarios |
| `USUARIO` | Solo lectura y generación de itinerarios propios |

### Modelo de autorización propuesto

**API REST:**
- `GET /api/**` → Accesible para `ADMIN` y `USUARIO`
- `POST /api/**` → Solo `ADMIN` (excepto itinerarios, que puede crear `USUARIO`)
- `PUT /api/**` → Solo `ADMIN`
- `DELETE /api/**` → Solo `ADMIN`

**Interfaz web:**
- Las rutas `/web/**` requerirían autenticación previa.
- El formulario de login se integraría con Thymeleaf Security.

### Autenticación recomendada
Para un TFG, la opción más sencilla es autenticación basada en sesión HTTP con formulario de login propio.
Para una API pública, se recomienda autenticación JWT (JSON Web Token).

---

## Otras medidas de seguridad recomendadas

- **Protección CSRF:** activar el token CSRF en formularios web (desactivado actualmente para simplificar el desarrollo).
- **Validación de entrada:** ya implementada con Bean Validation en todos los DTOs.
- **No exponer la consola H2 en producción:** la consola H2 debe estar deshabilitada fuera del perfil `dev`.
- **Variables de entorno para credenciales:** no incluir contraseñas ni credenciales de base de datos en el repositorio. Usar variables de entorno o ficheros `.env` no versionados.
- **HTTPS en producción:** configurar TLS en el servidor o en el proxy inverso (Nginx, Traefik).
