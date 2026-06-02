# Plan de Pruebas

## Pruebas manuales realizadas

Las pruebas manuales se han realizado mediante:

- **Swagger UI** (`/swagger-ui.html`): prueba de todos los endpoints REST con distintos valores de entrada, incluyendo casos de éxito y casos de error.
- **Interfaz web**: navegación completa por todos los flujos (crear, editar, borrar, generar itinerario, descargar PDF, cambiar idioma).
- **Consola H2** (`/h2-console`): verificación de que los datos se persisten correctamente en las tablas.

### Casos de prueba manuales ejecutados

| ID | Módulo | Caso de prueba | Resultado esperado | Estado |
|---|---|---|---|---|
| CP-01 | Destinos | Crear destino con datos válidos | Destino aparece en el listado | ✅ |
| CP-02 | Destinos | Crear destino con nombre vacío | Error de validación 400 | ✅ |
| CP-03 | Destinos | Editar destino existente | Datos actualizados en el listado | ✅ |
| CP-04 | Destinos | Eliminar destino con confirmación | Destino eliminado del listado | ✅ |
| CP-05 | Lugares | Crear lugar con tipo "cultura" | Badge azul en el listado | ✅ |
| CP-06 | Lugares | Crear lugar con precio negativo | Error de validación 400 | ✅ |
| CP-07 | Itinerarios | Generar itinerario Barcelona 3 días 200 € | Itinerario con actividades por día | ✅ |
| CP-08 | Itinerarios | Generar itinerario sin preferencias | Se incluyen todos los tipos | ✅ |
| CP-09 | Itinerarios | Marcar itinerario como favorito | Estrella ⭐ activada | ✅ |
| CP-10 | Itinerarios | Descargar PDF del itinerario | Archivo PDF descargado con el detalle | ✅ |
| CP-11 | API | GET /api/destinos | Lista de destinos en JSON | ✅ |
| CP-12 | API | GET /api/itinerarios/favoritos | Solo itinerarios favoritos | ✅ |
| CP-13 | i18n | Cambiar idioma a inglés | Mensajes de validación en inglés | ✅ |
| CP-14 | Buscador | Buscar "Gaudí" en lugares | Solo filas que contienen "Gaudí" | ✅ |

---

## Pruebas automatizadas (propuesta)

La estructura del proyecto permite añadir pruebas automatizadas sin modificar el dominio:

### Pruebas unitarias (JUnit 5 + Mockito)
- `GenerarItinerarioUseCaseTest`: verificar la distribución correcta de lugares por días.
- `DestinoMapperTest`: verificar la conversión entre entidad JPA y modelo de dominio.
- `PdfServiceTest`: verificar que se genera un PDF no nulo para un itinerario válido.

### Pruebas de integración (Spring Boot Test + H2)
- `DestinoRestControllerIT`: verificar todos los endpoints REST con MockMvc.
- `LugarTuristicoRestControllerIT`: verificar creación y validaciones.
- `ItinerarioRestControllerIT`: verificar generación, favoritos y eliminación.
