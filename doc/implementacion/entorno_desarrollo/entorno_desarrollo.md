# Entorno de Desarrollo

## Requisitos previos

| Herramienta | Versión mínima | Notas |
|---|---|---|
| JDK | 17 | Recomendado Adoptium Temurin 17 |
| Maven | 3.8+ | Incluido como wrapper (`mvnw.cmd`) |
| IDE | Cualquiera | Recomendado IntelliJ IDEA o VS Code con extensión Spring Boot |

> No es necesario instalar Maven por separado. El proyecto incluye el wrapper `mvnw.cmd` (Windows) y `mvnw` (Linux/macOS).

---

## Preparación del entorno

### 1. Clonar o descomprimir el proyecto

```bash
# Si está en un repositorio Git:
git clone <url-del-repositorio>
cd planificador-viajes-main

# Si es un ZIP:
# Descomprimir y abrir la carpeta en el IDE
```

### 2. Configurar JAVA_HOME (si no está configurado)

En Windows, abrir "Editar variables de entorno del sistema" y añadir:

```
Nombre: JAVA_HOME
Valor:  C:\Program Files\Java\jdk-17
```

Reiniciar el sistema para que el cambio surta efecto.

### 3. Ejecutar la aplicación

```bash
# Windows
.\mvnw.cmd spring-boot:run

# Linux / macOS
./mvnw spring-boot:run
```

La primera ejecución descargará las dependencias de Maven automáticamente (~2 minutos con conexión a internet).

### 4. Verificar que la aplicación ha arrancado

En la consola debe aparecer:

```
Started PlanificadorApplication in X seconds
```

---

## URLs de acceso

| Recurso | URL |
|---|---|
| Inicio (web) | http://localhost:8080/web/menu |
| Swagger UI | http://localhost:8080/swagger-ui.html |
| Consola H2 | http://localhost:8080/h2-console |

**Configuración de la consola H2:**
- JDBC URL: `jdbc:h2:mem:planificadordb`
- Usuario: `sa`
- Contraseña: *(vacía)*

---

## Perfil de desarrollo (`dev`)

El perfil activo por defecto es `dev`, configurado en `application.properties`:

```properties
spring.profiles.active=dev
```

La configuración específica de este perfil se encuentra en `application-dev.properties`:

- Base de datos H2 en memoria.
- Consola H2 habilitada.
- SQL de Hibernate mostrado en consola.
- Datos iniciales cargados desde `data.sql`.

---

## Estructura del proyecto

```
planificador-viajes-main/
├── src/main/java/        → Código fuente Java
├── src/main/resources/   → Configuración, plantillas y datos
│   ├── templates/        → Plantillas Thymeleaf
│   ├── static/css/       → Hojas de estilo
│   ├── application.properties
│   ├── application-dev.properties
│   ├── data.sql
│   └── messages*.properties
├── doc/                  → Documentación del proyecto
├── pom.xml               → Configuración Maven
└── mvnw.cmd / mvnw       → Wrapper Maven
```
