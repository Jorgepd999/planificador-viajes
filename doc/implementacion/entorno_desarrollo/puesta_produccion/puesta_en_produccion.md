# Puesta en Producción

## Objetivo

Desplegar la aplicación de forma estable, con base de datos persistente y acceso seguro desde internet.

---

## Cambios necesarios antes de producción

### 1. Sustituir H2 por PostgreSQL

Añadir la dependencia en `pom.xml`:

```xml
<dependency>
    <groupId>org.postgresql</groupId>
    <artifactId>postgresql</artifactId>
    <scope>runtime</scope>
</dependency>
```

Crear un perfil `application-prod.properties`:

```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/planificadordb
spring.datasource.username=${DB_USER}
spring.datasource.password=${DB_PASS}
spring.jpa.hibernate.ddl-auto=validate
spring.h2.console.enabled=false
spring.sql.init.mode=never
```

### 2. Desactivar la consola H2

Ya controlada por el perfil `prod` con `spring.h2.console.enabled=false`.

### 3. Usar variables de entorno para credenciales

Nunca incluir contraseñas en el repositorio. Usar variables de entorno o un fichero `.env` excluido del control de versiones.

### 4. Activar el perfil de producción

```bash
java -jar planificador-1.0.0.jar --spring.profiles.active=prod
```

---

## Despliegue con Docker (recomendado)

### Dockerfile

```dockerfile
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY target/planificador-1.0.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
```

### Construir la imagen

```bash
.\mvnw.cmd clean package -DskipTests
docker build -t planificador-viajes:1.0 .
```

### docker-compose.yml

```yaml
version: '3.8'
services:
  app:
    image: planificador-viajes:1.0
    ports:
      - "8080:8080"
    environment:
      SPRING_PROFILES_ACTIVE: prod
      DB_USER: pguser
      DB_PASS: pgpass
      SPRING_DATASOURCE_URL: jdbc:postgresql://db:5432/planificadordb
    depends_on:
      - db

  db:
    image: postgres:15-alpine
    environment:
      POSTGRES_DB: planificadordb
      POSTGRES_USER: pguser
      POSTGRES_PASSWORD: pgpass
    volumes:
      - pgdata:/var/lib/postgresql/data

volumes:
  pgdata:
```

### Ejecutar

```bash
docker-compose up -d
```

---

## Consideraciones de seguridad en producción

- Configurar HTTPS (TLS) mediante Nginx como proxy inverso o certificado Let's Encrypt.
- Implementar Spring Security antes del despliegue público.
- Deshabilitar el endpoint de Swagger en producción o protegerlo con autenticación.
- Realizar copias de seguridad periódicas de la base de datos.
