# Reutilización

## Reutilización en la capa de dominio

### Clase base `Identificador`
Clase abstracta común a todos los Value Objects de identidad del sistema (`DestinoId`, `LugarTuristicoId`, `ItinerarioId`). Centraliza la validación de que el identificador no sea nulo y el método `getValue()`.

### Interfaz `CRUDRepository<T, ID>`
Contrato genérico que define las operaciones básicas de persistencia: `save`, `getAll`, `getById`, `deleteById`. Todos los repositorios de dominio extienden de esta interfaz, garantizando coherencia en las operaciones de acceso a datos.

---

## Reutilización en la capa de infraestructura

### Patrón Mapper estático
Cada módulo tiene su clase Mapper con métodos estáticos que convierten entre entidades JPA, modelos de dominio y DTOs. Este enfoque evita instanciar mappers como beans y mantiene la lógica de conversión centralizada.

### Patrón Command
Los objetos Command encapsulan los datos de entrada de cada operación de escritura. Se reutilizan entre la capa de servicio y los casos de uso, evitando duplicar la definición de parámetros.

### CSS centralizado (`estilos.css`)
Un único fichero de estilos da formato a todas las páginas. Los componentes visuales (tablas, formularios, botones, badges, buscador, paginación) son clases reutilizables aplicables a cualquier plantilla.

### JavaScript de buscador y paginación
El mismo bloque de JavaScript se replica en los tres listados (destinos, lugares, itinerarios), aplicando el mismo patrón de filtrado y paginación sobre cualquier tabla con `id="tabla-body"`.

---

## Reutilización de la API

La API REST permite que cualquier cliente externo (aplicación móvil, frontend SPA, scripts de automatización) consuma los mismos endpoints sin depender de la interfaz web. La separación entre controladores REST (`/api/*`) y controladores de vista (`/web/*`) facilita esta independencia.
