# Endpoints REST — Lugares Turísticos

Base URL: `/api/lugares`

| Endpoint | Método | Body (Request) | Código HTTP | Respuesta | Posibles errores |
|---|---|---|---|---|---|
| `/api/lugares` | GET | N/A | **200 OK** | `[{"id":1,"nombre":"Sagrada Familia","tipo":"cultura","precio":26.0,"duracionVisita":2.5,"destinoId":1}]` | **500** → Error en el servidor |
| `/api/lugares/{id}` | GET | N/A | **200 OK** | `{"id":1,"nombre":"Sagrada Familia","tipo":"cultura","precio":26.0,"duracionVisita":2.5,"destinoId":1}` | **404** → Lugar no encontrado |
| `/api/lugares` | POST | `{"nombre":"Alhambra","tipo":"cultura","precio":15.0,"duracionVisita":3.0,"destinoId":1}` | **201 Created** | `{"id":25,"nombre":"Alhambra",...}` | **400** → Validación · **404** → Destino no existe |
| `/api/lugares/{id}` | PUT | `{"nombre":"Alhambra","tipo":"cultura","precio":15.0,"duracionVisita":3.0}` | **200 OK** | `{"id":25,"nombre":"Alhambra",...}` | **400** → Validación · **404** → No encontrado |
| `/api/lugares/{id}` | DELETE | N/A | **204 No Content** | N/A | **404** → Lugar no encontrado |

## Validaciones del body (POST/PUT)

| Campo | Tipo | Restricción |
|---|---|---|
| `nombre` | String | Obligatorio, no vacío |
| `tipo` | String | Obligatorio (cultura / naturaleza / gastronomia / ocio) |
| `precio` | Double | Obligatorio, >= 0 |
| `duracionVisita` | Double | Obligatorio, > 0 |
| `destinoId` | Integer | Obligatorio en POST, > 0 |
| `descripcion` | String | Opcional |
