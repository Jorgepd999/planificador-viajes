# Requisitos No Funcionales

## RNF-01 — Arquitectura
El sistema debe seguir una arquitectura hexagonal (Clean Architecture), separando claramente las capas de dominio, aplicación e infraestructura, de forma que el núcleo de negocio no dependa de frameworks ni de la base de datos.

## RNF-02 — Persistencia
La base de datos utilizada en el entorno de desarrollo es H2 en memoria.
La arquitectura debe permitir migrar a un motor relacional externo (PostgreSQL, MySQL) sin modificar el dominio ni la lógica de aplicación.

## RNF-03 — Validación
Los datos de entrada deben validarse mediante Bean Validation antes de procesarse.
Los mensajes de error deben estar externalizados en ficheros de propiedades para facilitar la internacionalización.

## RNF-04 — Documentación de la API
La API REST debe estar documentada automáticamente mediante OpenAPI 3.0 y accesible a través de Swagger UI en `/swagger-ui.html`.

## RNF-05 — Mantenibilidad
El código debe estar organizado en paquetes con una nomenclatura coherente.
Cada clase debe tener una única responsabilidad (principio SRP).
Se deben utilizar patrones establecidos: Command, UseCase, Repository, Mapper.

## RNF-06 — Portabilidad
El proyecto debe poder ejecutarse en cualquier sistema operativo que disponga de JDK 17 y el wrapper Maven incluido (`mvnw.cmd` / `mvnw`), sin instalaciones adicionales.

## RNF-07 — Escalabilidad
La arquitectura modular debe permitir añadir nuevas entidades o módulos (vuelos, hoteles, usuarios) sin reestructurar el código existente.

## RNF-08 — Rendimiento
El sistema debe utilizar Spring Cache para reducir consultas repetitivas a la base de datos en operaciones de lectura frecuentes.

## RNF-09 — Usabilidad
La interfaz web debe ser intuitiva y accesible sin conocimientos técnicos.
Los formularios deben incluir validación en el lado del cliente (HTML5) para una respuesta inmediata al usuario.
Las listas deben incluir buscador en tiempo real y paginación para facilitar la navegación.
