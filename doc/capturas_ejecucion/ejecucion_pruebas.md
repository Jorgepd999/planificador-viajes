# Capturas de la Ejecución

## Arranque de la aplicación

Al ejecutar `.\mvnw.cmd spring-boot:run`, la consola muestra:

```
  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::               (v3.5.7)

Started PlanificadorApplication in X.XXX seconds (process running for X.XXX)
```

Los datos iniciales se cargan automáticamente (5 destinos, 24 lugares turísticos).

---

## Ejecución de pruebas manuales mediante Swagger UI

Acceder a `http://localhost:8080/swagger-ui.html`.

### Ejemplo: GET /api/destinos
**Respuesta 200 OK:**
```json
[
  {"id": 1, "nombre": "Barcelona", "pais": "España", "descripcion": "Ciudad cosmopolita..."},
  {"id": 2, "nombre": "Paris", "pais": "Francia", "descripcion": "La ciudad de la luz..."}
]
```

### Ejemplo: POST /api/itinerarios
**Body:**
```json
{
  "nombre": "Fin de semana cultural en Roma",
  "destinoId": 3,
  "duracion": 2,
  "presupuesto": 100.0,
  "preferencias": "cultura"
}
```
**Respuesta 201 Created:**
```json
{
  "id": 1,
  "nombre": "Fin de semana cultural en Roma",
  "destinoId": 3,
  "nombreDestino": "Roma",
  "duracion": 2,
  "presupuesto": 100.0,
  "preferencias": "cultura",
  "favorito": false,
  "items": [
    {"dia": 1, "nombreLugar": "Fontana di Trevi", "tipo": "cultura", "precio": 0.0, "duracionVisita": 1.0},
    {"dia": 1, "nombreLugar": "Coliseo", "tipo": "cultura", "precio": 18.0, "duracionVisita": 2.0},
    {"dia": 2, "nombreLugar": "Vaticano", "tipo": "cultura", "precio": 20.0, "duracionVisita": 4.0}
  ]
}
```

### Ejemplo: Validación fallida — POST /api/destinos con nombre vacío
**Body:**
```json
{"nombre": "", "pais": "España"}
```
**Respuesta 400 Bad Request:**
```json
{"nombre": "El nombre del destino no puede estar vacío"}
```

---

## Prueba de la interfaz web

| Flujo | URL | Estado |
|---|---|---|
| Inicio | /web/menu | ✅ Tarjetas visibles |
| Listado destinos con buscador | /web/destinos/lista | ✅ Buscador y paginación funcionan |
| Crear destino | /web/destinos/nuevo | ✅ Validación y redirección |
| Generar itinerario | /web/itinerarios/nuevo | ✅ Itinerario generado correctamente |
| Ver detalle itinerario | /web/itinerarios/ver/{id} | ✅ Días y actividades visibles |
| Descargar PDF | /web/itinerarios/pdf/{id} | ✅ PDF descargado |
| Cambio de idioma | ?lang=en | ✅ Mensajes en inglés |
| Consola H2 | /h2-console | ✅ Tablas visibles con datos |
