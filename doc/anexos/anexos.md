# Anexos

## Anexo A — Datos iniciales (`data.sql`)

El sistema carga automáticamente los siguientes datos al arrancar en el perfil `dev`:

### Destinos precargados

| ID | Nombre | País |
|---|---|---|
| 1 | Barcelona | España |
| 2 | Paris | Francia |
| 3 | Roma | Italia |
| 4 | Amsterdam | Países Bajos |
| 5 | Tokio | Japón |

### Lugares turísticos precargados

| Nombre | Tipo | Precio | Duración | Destino |
|---|---|---|---|---|
| Sagrada Familia | cultura | 26 € | 2.5 h | Barcelona |
| Park Güell | cultura | 10 € | 2.0 h | Barcelona |
| La Boqueria | gastronomia | 0 € | 1.5 h | Barcelona |
| Barceloneta | ocio | 0 € | 3.0 h | Barcelona |
| Montjuïc | naturaleza | 5 € | 3.0 h | Barcelona |
| Casa Batlló | cultura | 35 € | 1.5 h | Barcelona |
| El Born | gastronomia | 0 € | 2.0 h | Barcelona |
| Torre Eiffel | cultura | 29.4 € | 2.5 h | Paris |
| Musée du Louvre | cultura | 22 € | 4.0 h | Paris |
| Montmartre | cultura | 0 € | 2.5 h | Paris |
| Jardines de Versalles | naturaleza | 20 € | 4.0 h | Paris |
| Le Marais | gastronomia | 0 € | 3.0 h | Paris |
| Moulin Rouge | ocio | 87 € | 2.5 h | Paris |
| Coliseo | cultura | 18 € | 2.0 h | Roma |
| Vaticano | cultura | 20 € | 4.0 h | Roma |
| Fontana di Trevi | cultura | 0 € | 1.0 h | Roma |
| Campo de Fiori | gastronomia | 0 € | 2.0 h | Roma |
| Villa Borghese | naturaleza | 15 € | 3.0 h | Roma |

*(Ámsterdam y Tokio no tienen lugares precargados — deben añadirse manualmente para generar itinerarios)*

---

## Anexo B — Configuración de Spring Cache

El proyecto incluye `spring-boot-starter-cache` y la anotación `@EnableCaching` en la clase principal. La caché está habilitada pero pendiente de configurar en los servicios de lectura frecuente (`findAll`, `getById`).

Para activarla en una futura versión, añadir en los servicios:

```java
@Cacheable("destinos")
public List<Destino> findAll() { ... }

@CacheEvict(value = "destinos", allEntries = true)
public Destino createDestino(...) { ... }
```

---

## Anexo C — Colección de pruebas API (curl)

```bash
# Listar destinos
curl -X GET http://localhost:8080/api/destinos

# Crear destino
curl -X POST http://localhost:8080/api/destinos \
  -H "Content-Type: application/json" \
  -d '{"nombre":"Lisboa","pais":"Portugal","descripcion":"Capital portuguesa junto al Tajo."}'

# Generar itinerario
curl -X POST http://localhost:8080/api/itinerarios \
  -H "Content-Type: application/json" \
  -d '{"nombre":"Escapada cultural","destinoId":3,"duracion":2,"presupuesto":100.0,"preferencias":"cultura"}'

# Marcar como favorito
curl -X PUT http://localhost:8080/api/itinerarios/1/favorito

# Eliminar itinerario
curl -X DELETE http://localhost:8080/api/itinerarios/1
```
