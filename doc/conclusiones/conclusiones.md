# Conclusiones — Análisis DAFO

## Fortalezas

**Arquitectura sólida y bien estructurada.**
El proyecto aplica la arquitectura hexagonal de forma coherente en todos sus módulos, separando claramente el dominio de la infraestructura. Esta organización facilita el mantenimiento, la legibilidad del código y la incorporación de nuevas funcionalidades sin romper las existentes.

**Funcionalidad diferenciadora: generación automática de itinerarios.**
El algoritmo de distribución de actividades por días, respetando presupuesto, horas disponibles y preferencias del usuario, es el elemento técnico más complejo y a la vez más útil del proyecto. No es una funcionalidad CRUD estándar, sino lógica de negocio real.

**Valor añadido: exportación a PDF.**
La generación de PDFs descargables desde el navegador, sin dependencia de servicios externos, aporta utilidad práctica al sistema y demuestra el uso de librerías Java externas correctamente integradas en el proyecto.

**API REST documentada y funcional.**
La integración de SpringDoc OpenAPI permite explorar y probar la API sin herramientas adicionales, lo que facilita tanto las pruebas durante el desarrollo como la presentación ante el tribunal.

**Internacionalización implementada.**
El soporte multilenguaje está completamente integrado mediante Spring MessageSource, con mensajes de validación en español e inglés.

---

## Debilidades

**Ausencia de autenticación y autorización.**
El sistema no implementa Spring Security. Todos los endpoints y rutas web son accesibles sin restricción, lo que hace inviable un despliegue en producción sin añadir esta capa de seguridad.

**Sin pruebas automatizadas.**
No existen pruebas unitarias ni de integración. Toda la verificación del funcionamiento se ha realizado de forma manual. Esto es una debilidad importante en términos de calidad del software.

**Base de datos en memoria.**
El uso exclusivo de H2 implica que los datos se pierden al reiniciar la aplicación. Aunque es adecuado para desarrollo, no es válido para producción.

**`PlanificadorViewController` con demasiadas responsabilidades.**
El controlador de vistas Thymeleaf gestiona los tres módulos del sistema en una sola clase. En proyectos más grandes, esto debería dividirse en controladores separados por módulo.

---

## Oportunidades

**Migración a PostgreSQL.**
La arquitectura hexagonal facilita sustituir H2 por un motor de base de datos persistente sin modificar el dominio ni la lógica de aplicación.

**Añadir autenticación con Spring Security.**
La estructura modular del proyecto permite incorporar seguridad sin reestructurar el código existente. Roles `ADMIN` y `USUARIO` encajarían de forma natural.

**Ampliar el catálogo de destinos.**
El sistema puede crecer con nuevos destinos, tipos de actividad y reglas de generación de itinerarios sin necesidad de cambios arquitectónicos.

**Integración con APIs externas.**
A futuro, el sistema podría conectarse a APIs de vuelos o alojamiento (Skyscanner, Booking) para enriquecer los itinerarios con información de precios reales.

---

## Amenazas

**Competencia de plataformas consolidadas.**
Herramientas como TripAdvisor o Google Travel tienen presupuestos y bases de datos incomparablemente mayores. La diferenciación debe basarse en la especialización y la personalización.

**Dependencia de datos manuales.**
El sistema requiere que los lugares turísticos sean introducidos manualmente por un administrador. Sin un proceso de carga de datos, la utilidad práctica es limitada.

---

## Conclusión final

El Planificador de Viajes cumple los objetivos planteados al inicio del proyecto: implementar una API REST con arquitectura hexagonal, ofrecer una interfaz web funcional y desarrollar una funcionalidad de generación automática de itinerarios como elemento técnico diferenciador. La base del proyecto es sólida y extensible, con un código bien organizado que puede seguir evolucionando en futuras versiones.
