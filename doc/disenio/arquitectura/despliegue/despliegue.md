# Diagrama de Despliegue

## Entorno de desarrollo

En el entorno de desarrollo, toda la aplicación corre en un único proceso JVM sobre la máquina local.

```
[ Navegador / Cliente REST ]
           │
           │ HTTP :8080
           ▼
[ JVM — Spring Boot Embedded Tomcat ]
    ├── Spring MVC (REST Controllers)
    ├── Thymeleaf (View Controllers)
    └── Spring Data JPA
           │
           ▼
[ H2 Database (en memoria) ]
```

- La consola H2 está disponible en `http://localhost:8080/h2-console`.
- Los datos se cargan desde `data.sql` al arrancar la aplicación.
- Al detener la aplicación, los datos se pierden (base de datos en memoria).

---

## Entorno de producción (propuesta)

Para un despliegue real se propone la siguiente arquitectura con Docker:

```
[ Navegador / Cliente REST ]
           │
           │ HTTPS :443
           ▼
[ Nginx — Proxy inverso + TLS ]
           │
           │ HTTP :8080
           ▼
[ Contenedor Docker — Spring Boot ]
           │
           ▼
[ Contenedor Docker — PostgreSQL ]
           │
           ▼
[ Volumen persistente ]
```

Ver detalles en [Puesta en producción](../../../implementacion/entorno_desarrollo/puesta_produccion/puesta_en_produccion.md).
