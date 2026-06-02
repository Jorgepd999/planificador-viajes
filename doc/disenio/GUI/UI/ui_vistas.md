# UI — Vistas

Las vistas están desarrolladas con HTML5, Thymeleaf y CSS propio. Se ha optado por un diseño simple y funcional sin frameworks externos como Bootstrap, para mantener el control total sobre los estilos y reducir dependencias.

---

## Componentes visuales principales

### Cabecera
Presente en todas las páginas. Muestra el título del módulo actual y el selector de idioma (🇪🇸 / 🇬🇧). Fondo azul corporativo `#0f4c81`.

### Tarjetas de acceso (Home)
La página de inicio presenta cinco tarjetas (`card`) que enlazan a los módulos principales. Cada tarjeta incluye un icono emoji y un texto descriptivo. Efecto hover con elevación.

### Botones de acción (`action-card`)
Botones de navegación rápida presentes en la parte superior de cada listado (volver al menú, crear nuevo elemento). Fondo blanco con sombra y efecto hover.

### Tablas
Las tablas muestran los datos de cada entidad con:
- Cabecera en azul corporativo con texto blanco.
- Filas alternas con fondo gris suave.
- Efecto hover en azul claro al pasar el ratón.
- Botones de edición (azul) y eliminación (rojo) en la columna de acciones.

### Buscador y paginación
Cada listado incluye un campo de búsqueda que filtra las filas en tiempo real y un contador de resultados. Si hay más filas que el límite por página (5 u 8), aparecen botones de paginación anterior/siguiente con numeración.

### Badges de tipo de actividad
En la lista de lugares y en el detalle del itinerario, el tipo de actividad se muestra mediante un badge de color:
- 🔵 Cultura — azul
- 🟢 Naturaleza — verde
- 🟡 Gastronomía — amarillo
- 🩷 Ocio — rosa

### Formularios
Campos con `label`, `input` o `select` agrupados en `.form-group`. Validación HTML5 mediante `required`, `minlength`, `min`, `max`. Los `select` de tipo de actividad muestran el valor preseleccionado en modo edición.

### Resumen del viaje
En la vista de itinerario, un bloque visual con tarjetas individuales muestra el destino, la duración, el presupuesto y las preferencias.

### Tarjetas por día (`dia-card`)
El itinerario se presenta dividido en días, cada uno con una cabecera azul y una tabla interior con los lugares asignados.
