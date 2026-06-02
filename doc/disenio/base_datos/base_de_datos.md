# Diseño de Base de Datos

## Motor de base de datos

Durante el desarrollo se utiliza **H2 Database en modo memoria** (`jdbc:h2:mem:planificadordb`).

Ventajas para el entorno de desarrollo:
- Arranque instantáneo sin instalación externa.
- Tablas creadas automáticamente por Hibernate al iniciar la aplicación.
- Datos de ejemplo cargados desde `data.sql` en cada arranque.
- Consola web de administración en `http://localhost:8080/h2-console`.

La arquitectura hexagonal permite migrar a PostgreSQL, MySQL u otro motor relacional simplemente cambiando la dependencia y las propiedades de conexión, sin modificar el dominio ni la lógica de aplicación.

---

## Modelo de datos

### Entidad: DESTINOS

| Campo | Tipo | Restricciones |
|---|---|---|
| id | INTEGER | PK, autoincremental |
| nombre | VARCHAR(100) | NOT NULL |
| pais | VARCHAR(100) | NOT NULL |
| descripcion | VARCHAR(500) | nullable |

### Entidad: LUGARES_TURISTICOS

| Campo | Tipo | Restricciones |
|---|---|---|
| id | INTEGER | PK, autoincremental |
| nombre | VARCHAR(150) | NOT NULL |
| descripcion | VARCHAR(500) | nullable |
| tipo | VARCHAR(50) | NOT NULL (cultura / naturaleza / gastronomia / ocio) |
| precio | DOUBLE | NOT NULL, >= 0 |
| duracion_visita | DOUBLE | NOT NULL, > 0 |
| destino_id | INTEGER | FK → DESTINOS(id), NOT NULL |

### Entidad: ITINERARIOS

| Campo | Tipo | Restricciones |
|---|---|---|
| id | INTEGER | PK, autoincremental |
| nombre | VARCHAR(200) | NOT NULL |
| destino_id | INTEGER | NOT NULL |
| nombre_destino | VARCHAR(200) | nullable |
| duracion | INTEGER | NOT NULL, 1–30 |
| presupuesto | DOUBLE | NOT NULL, >= 0 |
| preferencias | VARCHAR(200) | nullable |
| favorito | BOOLEAN | NOT NULL, default false |
| fecha_creacion | TIMESTAMP | nullable |

### Entidad: ITEMS_ITINERARIO

| Campo | Tipo | Restricciones |
|---|---|---|
| id | INTEGER | PK, autoincremental |
| itinerario_id | INTEGER | FK → ITINERARIOS(id), NOT NULL |
| dia | INTEGER | NOT NULL |
| lugar_turistico_id | INTEGER | nullable |
| nombre_lugar | VARCHAR(200) | NOT NULL |
| tipo | VARCHAR(50) | NOT NULL |
| precio | DOUBLE | NOT NULL |
| duracion_visita | DOUBLE | NOT NULL |

---

## Relaciones

```
DESTINOS (1) ────────────── (N) LUGARES_TURISTICOS
                                       │
                                       │ (referencia lógica)
                                       ▼
ITINERARIOS (1) ─────────── (N) ITEMS_ITINERARIO
```

- Un destino puede tener múltiples lugares turísticos.
- Un itinerario puede tener múltiples ítems (uno por actividad planificada).
- La relación entre `ITEMS_ITINERARIO` y `LUGARES_TURISTICOS` es una referencia lógica (se almacena el `lugar_turistico_id` y el nombre del lugar para evitar dependencias en la consulta del historial).

---

## Datos iniciales (`data.sql`)

Al arrancar la aplicación se insertan automáticamente:
- **5 destinos:** Barcelona, París, Roma, Ámsterdam, Tokio.
- **24 lugares turísticos** distribuidos entre los destinos, con distintos tipos, precios y duraciones.
