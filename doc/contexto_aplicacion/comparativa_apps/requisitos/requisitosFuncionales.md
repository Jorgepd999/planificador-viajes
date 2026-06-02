# Requisitos Funcionales

## RF-01 — Gestión de destinos
El sistema debe permitir:
- Crear destinos turísticos (nombre, país, descripción).
- Listar todos los destinos.
- Consultar un destino por su identificador.
- Modificar los datos de un destino existente.
- Eliminar un destino.

## RF-02 — Gestión de lugares turísticos
El sistema debe permitir:
- Crear lugares de interés asociados a un destino (nombre, descripción, tipo, precio, duración de visita).
- Listar todos los lugares.
- Consultar un lugar por su identificador.
- Modificar los datos de un lugar.
- Eliminar un lugar.

## RF-03 — Relación entre entidades
Cada lugar turístico debe estar asociado obligatoriamente a un destino existente.
Un destino puede tener múltiples lugares turísticos asociados.

## RF-04 — Generación automática de itinerarios
El sistema debe generar itinerarios automáticamente a partir de:
- Un destino seleccionado.
- Una duración en días (1–30).
- Un presupuesto total en euros.
- Preferencias de actividad (cultura, naturaleza, gastronomía, ocio).

El algoritmo debe distribuir los lugares disponibles por días respetando las horas disponibles (8 h/día) y el presupuesto diario estimado.

## RF-05 — Sistema de favoritos
El sistema debe permitir marcar y desmarcar itinerarios como favoritos.
Debe existir un endpoint para consultar solo los itinerarios marcados como favoritos.

## RF-06 — Exportación a PDF
El sistema debe permitir exportar cualquier itinerario a un archivo PDF descargable que incluya el resumen del viaje y las actividades organizadas por día.

## RF-07 — API REST
El sistema debe exponer una API REST con endpoints para las tres entidades principales (destinos, lugares, itinerarios), documentada con OpenAPI/Swagger.

## RF-08 — Interfaz web
El sistema debe incluir una interfaz web desarrollada con Thymeleaf que permita realizar todas las operaciones CRUD y la generación de itinerarios sin necesidad de usar la API directamente.

## RF-09 — Internacionalización
La interfaz web debe soportar al menos dos idiomas (español e inglés) mediante el parámetro `?lang=`.

## RF-10 — Validación de datos
Todos los datos de entrada deben validarse antes de persistirse, mostrando mensajes de error claros al usuario.

## RF-11 — Manejo de errores
El sistema debe gestionar los errores de forma centralizada, devolviendo respuestas coherentes tanto en la API REST como en la interfaz web.

## RF-12 — Datos iniciales
El sistema debe incluir datos de ejemplo precargados al arrancar (5 destinos y sus lugares de interés) para facilitar las pruebas.
