# Diagrama de Navegación

## Flujo principal — Interfaz Web

```
Inicio (/web/menu)
│
├── Destinos (/web/destinos/lista)
│   ├── Nuevo destino (/web/destinos/nuevo)
│   │   └── [Guardar] → Listado de destinos
│   ├── Editar destino (/web/destinos/editar/{id})
│   │   └── [Guardar] → Listado de destinos
│   └── [Borrar] → Confirmación → Listado de destinos
│
├── Lugares (/web/lugares/lista)
│   ├── Nuevo lugar (/web/lugares/nuevo)
│   │   └── [Guardar] → Listado de lugares
│   ├── Editar lugar (/web/lugares/editar/{id})
│   │   └── [Guardar] → Listado de lugares
│   └── [Borrar] → Confirmación → Listado de lugares
│
├── Itinerarios (/web/itinerarios/lista)
│   ├── Planificar viaje (/web/itinerarios/nuevo)
│   │   └── [Generar] → Listado de itinerarios
│   ├── Ver itinerario (/web/itinerarios/ver/{id})
│   │   ├── [Descargar PDF] → Descarga archivo .pdf
│   │   └── [Favorito] → Actualiza estado → Vista de itinerario
│   ├── [Favorito] → Actualiza estado → Listado de itinerarios
│   └── [Borrar] → Confirmación → Listado de itinerarios
│
└── API Docs → /swagger-ui.html (nueva pestaña)
```

---

## Flujo API REST

```
/api/destinos
├── GET    → Lista de destinos
├── POST   → Crear destino
├── GET    /{id} → Detalle
├── PUT    /{id} → Actualizar
└── DELETE /{id} → Eliminar

/api/lugares
├── GET    → Lista de lugares
├── POST   → Crear lugar
├── GET    /{id} → Detalle
├── PUT    /{id} → Actualizar
└── DELETE /{id} → Eliminar

/api/itinerarios
├── GET    → Lista de itinerarios
├── POST   → Generar itinerario
├── GET    /{id} → Detalle
├── GET    /favoritos → Solo favoritos
├── PUT    /{id}/favorito → Toggle favorito
└── DELETE /{id} → Eliminar
```

---

## Características de la navegación

- Todas las páginas incluyen un acceso directo al menú principal.
- El flujo de creación y edición siempre redirige al listado tras guardar.
- Los errores de validación muestran la respuesta en la misma página sin perder los datos introducidos.
- La navegación no requiere inicio de sesión (sistema sin autenticación en versión actual).
