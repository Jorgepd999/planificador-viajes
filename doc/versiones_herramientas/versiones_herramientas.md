# Versiones de las Herramientas Utilizadas

## Herramientas de desarrollo

| Herramienta | Versión | Cómo verificar |
|---|---|---|
| Java (JDK) | 17 | `java -version` |
| Maven | 3.9.x (wrapper incluido) | `.\mvnw.cmd -version` |
| Spring Boot | 3.5.7 | Ver `pom.xml` |
| Spring Data JPA | Gestionado por Spring Boot 3.5.7 | — |
| Hibernate | Gestionado por Spring Boot 3.5.7 | — |
| H2 Database | Gestionado por Spring Boot 3.5.7 | — |
| Thymeleaf | Gestionado por Spring Boot 3.5.7 | — |
| Lombok | Gestionado por Spring Boot 3.5.7 | — |
| OpenHTMLtoPDF | 1.1.36 | Ver `pom.xml` |
| SpringDoc OpenAPI | 2.3.0 | Ver `pom.xml` |

## IDE y herramientas complementarias

| Herramienta | Uso |
|---|---|
| IntelliJ IDEA / VS Code | Desarrollo del código |
| Git | Control de versiones |
| Swagger UI | Prueba manual de la API REST |
| Consola H2 | Verificación de datos en base de datos |
| Navegador web | Prueba de la interfaz Thymeleaf |

## Sistema operativo de desarrollo

Windows 10/11 con PowerShell.

## Verificación de la versión de Java

```powershell
java -version
# Debe mostrar: openjdk version "17.x.x" ...
```

## Verificación del wrapper Maven

```powershell
.\mvnw.cmd -version
# Debe mostrar: Apache Maven 3.x.x
```
