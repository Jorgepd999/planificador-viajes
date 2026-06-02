# Endpoints REST — Itinerarios

Base URL: `/api/itinerarios`

| Endpoint | Método | Body (Request) | Código HTTP | Respuesta | Posibles errores |
|---|---|---|---|---|---|
| `/api/itinerarios` | GET | N/A | **200 OK** | `[{"id":1,"nombre":"Viaje a Barcelona","destinoId":1,"duracion":3,"presupuesto":200.0,...}]` | **500** → Error en el servidor |
| `/api/itinerarios/{id}` | GET | N/A | **200 OK** | `{"id":1,"nombre":"Viaje a Barcelona","items":[...]}` | **404** → Itinerario no encontrado |
| `/api/itinerarios/favoritos` | GET | N/A | **200 OK** | `[{itinerarios marcados como favorito}]` | **500** → Error en el servidor |
| `/api/itinerarios` | POST | `{"nombre":"Fin de semana en Roma","destinoId":3,"duracion":2,"presupuesto":150.0,"preferencias":"cultura,gastronomia"}` | **201 Created** | `{"id":2,"nombre":"Fin de semana en Roma","items":[...]}` | **400** → Validación |
| `/api/itinerarios/{id}/favorito` | PUT | N/A | **200 OK** | `{"id":1,"favorito":true,...}` | **404** → No encontrado |
| `/api/itinerarios/{id}` | DELETE | N/A | **204 No Content** | N/A | **404** → Itinerario no encontrado |

## Validaciones del body (POST)

| Campo | Tipo | Restricción |
|---|---|---|
| `nombre` | String | Obligatorio, no vacío |
| `destinoId` | Integer | Obligatorio, > 0 |
| `duracion` | Integer | Obligatorio, 1–30 |
| `presupuesto` | Double | Obligatorio, >= 0 |
| `preferencias` | String | Opcional. Valores posibles: `cultura`, `naturaleza`, `gastronomia`, `ocio` (separados por comas) |

## Nota sobre el algoritmo

El campo `preferencias` actúa como filtro: si se especifica, el sistema solo considera lugares del tipo indicado. Si se deja vacío, se consideran todos los tipos disponibles para el destino.
