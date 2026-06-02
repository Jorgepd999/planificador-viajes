# IxD — Diseño de Interacción

## Modelo de interacción

La aplicación combina dos modelos de interacción:

1. **Interfaz web** (Thymeleaf + formularios HTML): navegación clásica mediante solicitudes HTTP GET y POST.
2. **API REST** (JSON): interacción programática mediante métodos HTTP estándar (GET, POST, PUT, DELETE).

---

## Interacciones principales en la web

### Navegación entre módulos
El usuario accede al módulo deseado desde la pantalla de inicio. Cada módulo es independiente y tiene su propia sección de listado, creación y edición.

### Creación de registros
1. El usuario pulsa "Nuevo" en el listado.
2. Se muestra un formulario vacío.
3. El usuario rellena los campos y pulsa "Guardar".
4. El sistema valida los datos, persiste el registro y redirige al listado actualizado.

### Edición de registros
1. El usuario pulsa el botón de edición (✏) en la fila del registro.
2. Se muestra el formulario con los datos actuales precargados.
3. El usuario modifica lo necesario y pulsa "Guardar cambios".
4. El sistema actualiza el registro y redirige al listado.

### Eliminación de registros
1. El usuario pulsa el botón de eliminación (🗑) en la fila del registro.
2. El navegador muestra un diálogo de confirmación nativo.
3. Si el usuario confirma, el sistema elimina el registro y recarga el listado.

### Generación de itinerario
1. El usuario pulsa "Planificar viaje".
2. Selecciona destino, introduce duración y presupuesto, y marca sus preferencias.
3. El sistema genera el itinerario automáticamente y redirige al listado.
4. El usuario puede ver el detalle pulsando el icono (👁).

### Descarga de PDF
Desde la vista de detalle de un itinerario, el usuario pulsa "Descargar PDF".
El navegador descarga automáticamente un archivo PDF con el itinerario completo.

---

## Interacciones REST

| Método | Semántica | Código de éxito |
|---|---|---|
| GET | Consulta sin efectos secundarios | 200 OK |
| POST | Creación de nuevo recurso | 201 Created |
| PUT | Actualización completa de recurso | 200 OK |
| DELETE | Eliminación de recurso | 204 No Content |

Los errores devuelven códigos HTTP coherentes: 400 (validación), 404 (no encontrado), 500 (error de servidor).
