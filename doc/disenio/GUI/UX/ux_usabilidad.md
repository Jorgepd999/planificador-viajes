# UX — Experiencia de Usuario

## Objetivos de usabilidad

El diseño de la interfaz persigue que cualquier usuario, sin conocimientos técnicos previos, pueda:

- Crear y gestionar destinos y lugares en menos de un minuto.
- Generar un itinerario completo en tres pasos (seleccionar destino, duración y presupuesto).
- Encontrar cualquier registro existente mediante búsqueda directa, sin necesidad de paginar manualmente.
- Entender el estado de cada operación a través de mensajes y redirecciones claras.

---

## Principios UX aplicados

### Feedback inmediato
- La validación HTML5 en los formularios muestra mensajes de error antes de enviar el formulario, evitando peticiones innecesarias al servidor.
- La confirmación mediante `confirm()` antes de eliminar un registro evita borrados accidentales.
- El buscador actualiza los resultados y el contador en tiempo real, sin espera.

### Flujo orientado a tareas
- Cada página tiene un único objetivo claro.
- Los botones de acción principal están siempre visibles en la parte superior.
- El botón "Volver" está siempre presente para facilitar la navegación sin depender del botón del navegador.

### Reducción de errores
- Los formularios de edición precargan los datos actuales del registro, evitando que el usuario tenga que volver a introducir información.
- Los campos numéricos tienen valores mínimos y máximos definidos (`min`, `max`) que impiden valores incoherentes.
- El selector de tipo de actividad en los formularios de lugar usa un `<select>` con opciones fijas, eliminando errores de escritura.

### Consistencia visual
- La cabecera, la paleta de colores, los botones y las tablas siguen el mismo estilo en todas las páginas.
- Los badges de tipo de actividad son siempre del mismo color para el mismo tipo, facilitando el reconocimiento visual.

### Accesibilidad básica
- Todos los campos de formulario tienen su `<label>` asociado.
- Los botones de acción tienen atributos `title` descriptivos donde es necesario.
- El selector de idioma permite cambiar entre español e inglés en cualquier página de listado.
