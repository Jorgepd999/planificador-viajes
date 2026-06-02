# Elementos Destacables del Desarrollo

## 1. Arquitectura hexagonal aplicada de forma coherente

El proyecto implementa la arquitectura hexagonal de forma consistente en todos sus módulos. El dominio no importa ninguna clase de Spring ni de JPA. La inyección de dependencias entre capas se realiza manualmente en clases `@Configuration`, siguiendo el patrón de los puertos y adaptadores de forma explícita.

## 2. Algoritmo de generación automática de itinerarios

El caso de uso `GenerarItinerarioUseCase` implementa un algoritmo propio que distribuye los lugares turísticos de un destino entre los días del viaje, respetando simultáneamente:
- Las horas disponibles por día (8 horas).
- El presupuesto diario estimado (con un margen del 20 %).
- El presupuesto total disponible.
- Las preferencias de tipo de actividad del usuario.
- La restricción de no repetir ningún lugar en el mismo itinerario.

## 3. Exportación de itinerarios a PDF

Mediante la librería `openhtmltopdf-pdfbox`, el sistema genera dinámicamente un PDF con el itinerario completo (resumen, actividades por día, coste total) sin depender de servicios externos. El PDF se genera en memoria y se descarga directamente desde el navegador.

## 4. Buscador y paginación 100 % en el lado del cliente

Se ha implementado un sistema de búsqueda en tiempo real y paginación mediante JavaScript puro, sin recargar la página ni realizar peticiones adicionales al servidor. Esto mejora la experiencia de usuario y demuestra conocimiento de la manipulación del DOM.

## 5. Internacionalización con Spring MessageSource

Los mensajes de validación están externalizados en ficheros `.properties` separados por idioma (`messages_es.properties`, `messages_en.properties`). El idioma se cambia mediante el parámetro `?lang=` en la URL, con persistencia en sesión mediante `SessionLocaleResolver`.

## 6. Documentación automática con OpenAPI / Swagger UI

La API REST está documentada automáticamente mediante SpringDoc OpenAPI. Accesible en `/swagger-ui.html`, permite explorar y probar todos los endpoints sin necesidad de herramientas externas como Postman.

## 7. Separación entre controladores REST y de vista

El proyecto mantiene una separación clara entre los controladores REST (`@RestController` en `/api/*`) y el controlador de vistas Thymeleaf (`@Controller` en `/web/*`), permitiendo que la API y la interfaz web coexistan sin interferencias y puedan evolucionar de forma independiente.
