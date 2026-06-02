# Planificador de Viajes — API REST

**Versión:** 1.0  
**Autor:** David Aguilar y Jorge Pérez  
**Ciclo:** Desarrollo de Aplicaciones Web (DAW)  
**Centro:** IES Enrique Tierno Galvan  
**Curso:** 2025–2026

---

## Resumen del proyecto

API REST para la gestión de destinos turísticos, lugares de interés e itinerarios de viaje personalizados, con:

- Gestión completa de `Destino`, `LugarTuristico` e `Itinerario` (relaciones 1:N)
- Generación automática de itinerarios según destino, duración, presupuesto y preferencias
- Sistema de itinerarios favoritos
- Exportación de itinerarios a PDF
- Interfaz web con Thymeleaf
- Persistencia con Spring Data JPA y H2
- Validaciones de entrada con Bean Validation
- Manejo global de excepciones
- Multilenguaje (español e inglés)
- Documentación automática con OpenAPI / Swagger UI
- Arquitectura hexagonal (Clean Architecture)

---

## Documentación completa

- [**Contexto de la aplicación**](./doc/contexto_aplicacion/contexto.md)
  - [Comparativa con otras apps](./doc/contexto_aplicacion/comparativa_apps/apps_existentes.md)
    - [Casos de uso — Destinos](./doc/contexto_aplicacion/comparativa_apps/casos_uso/casos_uso_destinos.md)
    - [Casos de uso — Lugares](./doc/contexto_aplicacion/comparativa_apps/casos_uso/casos_uso_lugares.md)
    - [Casos de uso — Itinerarios](./doc/contexto_aplicacion/comparativa_apps/casos_uso/casos_uso_itinerarios.md)
    - [Requisitos funcionales](./doc/contexto_aplicacion/comparativa_apps/requisitos/requisitosFuncionales.md)
    - [Requisitos no funcionales](./doc/contexto_aplicacion/comparativa_apps/requisitos/requisitosNoFuncionales.md)
- **Diseño**
  - [GUI](./doc/disenio/GUI/gui.md)
    - [UI (vistas)](./doc/disenio/GUI/UI/ui_vistas.md)
    - [UX (usabilidad)](./doc/disenio/GUI/UX/ux_usabilidad.md)
    - [IxD (interacción)](./doc/disenio/GUI/IxD/ixd_interaccion.md)
    - [Diagrama de navegación](./doc/disenio/GUI/diagrama_navegacion/diagrama_navegacion.md)
    - [Reutilización](./doc/disenio/GUI/reutilizacion/reutilizacion.md)
  - Arquitectura
    - [Despliegue](./doc/disenio/arquitectura/despliegue/despliegue.md)
    - [Componente Global](./doc/disenio/arquitectura/componentesGlobal/componenteGlobal.md)
      - [Componente Destinos](./doc/disenio/arquitectura/componentesGlobal/componenteDestinos/componenteDestinos.md)
      - [Componente Itinerarios](./doc/disenio/arquitectura/componentesGlobal/componenteItinerarios/componenteItinerarios.md)
    - [Seguridad](./doc/disenio/arquitectura/seguridad.md)
  - Servicios REST
    - [Endpoints Destinos](./doc/disenio/servicios_REST/endpoints/destinos.md)
    - [Endpoints Lugares](./doc/disenio/servicios_REST/endpoints/lugares.md)
    - [Endpoints Itinerarios](./doc/disenio/servicios_REST/endpoints/itinerarios.md)
  - [Base de datos](./doc/disenio/base_datos/base_de_datos.md)
  - [Plan de pruebas](./doc/disenio/plan_pruebas/plan_de_pruebas.md)
- **Implementación**
  - [Entorno de desarrollo](./doc/implementacion/entorno_desarrollo/entorno_desarrollo.md)
    - [Puesta en producción](./doc/implementacion/entorno_desarrollo/puesta_produccion/puesta_en_produccion.md)
- [**Capturas de ejecución**](./doc/capturas_ejecucion/ejecucion_pruebas.md)
- [**Versiones de herramientas**](./doc/versiones_herramientas/versiones_herramientas.md)
- [**Elementos destacables**](./doc/elementos_destacables/elementos_destacables.md)
- [**Manual de usuario**](./doc/manual_usuario/manual_usuario.md)
- [**Conclusiones**](./doc/conclusiones/conclusiones.md)
- [**Bibliografía**](./doc/bibliografia/bibliografia.md)
- [**Anexos**](./doc/anexos/anexos.md)

---

## Puesta en marcha rápida

### Requisitos

- JDK 17
- Maven 3.8+ (o usar el wrapper incluido `mvnw.cmd`)

### Ejecución

```bash
.\mvnw.cmd spring-boot:run
```

### URLs disponibles

| Recurso | URL |
|---|---|
| Inicio (web) | http://localhost:8080/web/menu |
| Destinos | http://localhost:8080/web/destinos/lista |
| Lugares | http://localhost:8080/web/lugares/lista |
| Itinerarios | http://localhost:8080/web/itinerarios/lista |
| Swagger UI | http://localhost:8080/swagger-ui.html |
| Consola H2 | http://localhost:8080/h2-console |
