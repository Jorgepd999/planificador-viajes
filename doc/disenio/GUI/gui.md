# GUI — Interfaz Gráfica de Usuario

La aplicación incluye una interfaz web completa desarrollada con **Thymeleaf** y CSS propio, accesible desde cualquier navegador.

## Características generales

- Diseño limpio y funcional, con paleta de color azul corporativo (`#0f4c81`).
- Cabecera fija con título y selector de idioma (ES / EN).
- Navegación organizada por módulos: Destinos, Lugares e Itinerarios.
- Tablas con fondo alternado, efectos hover y columnas de acciones.
- Formularios con validación HTML5 en el lado del cliente.
- Botones de acción diferenciados visualmente (editar en azul, eliminar en rojo).
- Buscador en tiempo real que filtra los resultados de la tabla sin recargar la página.
- Paginación dinámica que se ajusta al número de resultados del buscador.
- Badges de color para identificar visualmente el tipo de actividad de cada lugar.
- Vista de itinerario con resumen del viaje y detalle día a día.

---

## Plantillas Thymeleaf

| Plantilla | Descripción |
|---|---|
| `home.html` | Página de inicio con tarjetas de acceso a cada módulo |
| `destinos-lista.html` | Listado de destinos con buscador, paginación y acciones |
| `destinos-formulario-nuevo.html` | Formulario para crear un nuevo destino |
| `destinos-formulario-editar.html` | Formulario para editar un destino existente |
| `lugares-lista.html` | Listado de lugares con buscador, paginación, badges y acciones |
| `lugares-formulario-nuevo.html` | Formulario para crear un nuevo lugar turístico |
| `lugares-formulario-editar.html` | Formulario para editar un lugar existente |
| `itinerarios-lista.html` | Listado de itinerarios con buscador, paginación y acciones |
| `itinerario-formulario-nuevo.html` | Formulario de generación de itinerario con checkboxes de preferencias |
| `itinerario-ver.html` | Vista detallada del itinerario por días con botón de descarga PDF |
