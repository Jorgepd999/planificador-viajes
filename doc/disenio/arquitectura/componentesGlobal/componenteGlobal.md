# Arquitectura Global

## Arquitectura hexagonal (Clean Architecture)

El proyecto sigue una **arquitectura hexagonal**, también conocida como Clean Architecture o arquitectura de puertos y adaptadores. Este patrón organiza el código en capas concéntricas donde el núcleo de negocio (dominio) es independiente de cualquier framework, base de datos o interfaz de usuario.

### Principio fundamental
El dominio no depende de la infraestructura. Los detalles técnicos (JPA, Spring, HTTP) dependen del dominio, nunca al revés.

---

## Capas del sistema

### Dominio (`domain`)
- Modelos de negocio: `Destino`, `LugarTuristico`, `Itinerario`, `ItemItinerario`.
- Value Objects para los identificadores: `DestinoId`, `LugarTuristicoId`, `ItinerarioId`.
- Interfaces de repositorio: contratos que define el dominio y que la infraestructura implementa.
- Excepciones de dominio: `DestinoNotFoundException`, `LugarTuristicoNotFoundException`, `ItinerarioNotFoundException`.

### Aplicación (`application`)
- **Commands:** objetos que encapsulan los parámetros de cada operación de escritura.
- **Use Cases:** clases puras (sin `@Service`) que orquestan la lógica de negocio usando las interfaces del dominio.
- **Services:** clases `@Service` de Spring que reciben los Use Cases inyectados y actúan como punto de entrada desde la infraestructura.

### Infraestructura (`infraestructure`)
- **Config:** clases `@Configuration` que instancian manualmente los Use Cases y los conectan con los repositorios.
- **DB/JPA:** entidades JPA, repositorios Spring Data e implementaciones de los repositorios de dominio.
- **Mapper:** clases con métodos estáticos que transforman entre entidades JPA, modelos de dominio y DTOs.
- **Web/REST:** controladores REST (`@RestController`) y de vista (`@Controller`), DTOs de request/response.
- **PDF:** servicio de generación de PDF usando openhtmltopdf.

### Common (`common`)
- `Identificador`: clase base abstracta para todos los Value Objects de identidad.
- `CRUDRepository<T,ID>`: interfaz genérica de repositorio.
- `GlobalExceptionHandler`: manejo centralizado de excepciones.
- `LanguageConfig`: configuración de internacionalización.

---

## Diagrama de módulos

```
┌─────────────────────────────────────────┐
│              INFRAESTRUCTURA             │
│  (Spring, JPA, Thymeleaf, REST, PDF)    │
│                                         │
│  ┌──────────────────────────────────┐   │
│  │          APLICACIÓN              │   │
│  │  (Services, UseCases, Commands)  │   │
│  │                                  │   │
│  │  ┌────────────────────────────┐  │   │
│  │  │         DOMINIO            │  │   │
│  │  │  (Models, Repositories,    │  │   │
│  │  │   Value Objects, Errors)   │  │   │
│  │  └────────────────────────────┘  │   │
│  └──────────────────────────────────┘   │
└─────────────────────────────────────────┘
```
