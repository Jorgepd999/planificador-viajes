# Endpoints REST — Destinos

Base URL: `/api/destinos`

| Endpoint | Método | Body (Request) | Código HTTP | Respuesta | Posibles errores |
|---|---|---|---|---|---|
| `/api/destinos` | GET | N/A | **200 OK** | `[{"id":1,"nombre":"Barcelona","pais":"España","descripcion":"..."}]` | **500** → Error en el servidor |
| `/api/destinos/{id}` | GET | N/A | **200 OK** | `{"id":1,"nombre":"Barcelona","pais":"España","descripcion":"..."}` | **404** → Destino no encontrado |
| `/api/destinos` | POST | `{"nombre":"Lisboa","pais":"Portugal","descripcion":"..."}` | **201 Created** | `{"id":6,"nombre":"Lisboa","pais":"Portugal","descripcion":"..."}` | **400** → Campos obligatorios vacíos |
| `/api/destinos/{id}` | PUT | `{"nombre":"Lisboa","pais":"Portugal","descripcion":"..."}` | **200 OK** | `{"id":6,"nombre":"Lisboa","pais":"Portugal","descripcion":"..."}` | **400** → Validación · **404** → No encontrado |
| `/api/destinos/{id}` | DELETE | N/A | **204 No Content** | N/A | **404** → Destino no encontrado |

## Validaciones del body (POST/PUT)

| Campo | Tipo | Restricción |
|---|---|---|
| `nombre` | String | Obligatorio, no vacío |
| `pais` | String | Obligatorio, no vacío |
| `descripcion` | String | Opcional |
