# Manual de Usuario

## Acceso a la aplicación

Abrir el navegador y acceder a:

```
http://localhost:8080/web/menu
```

La pantalla de inicio muestra cinco tarjetas de acceso rápido a los módulos principales.

---

## Módulo: Destinos

### Ver todos los destinos
1. Desde el menú, pulsar **Destinos**.
2. Se muestra la lista de destinos con nombre, país y descripción.
3. Usar el **buscador** para filtrar por cualquier campo.

### Crear un destino
1. Pulsar **➕ Nuevo destino**.
2. Rellenar los campos:
   - **Nombre del destino** *(obligatorio)*
   - **País** *(obligatorio)*
   - **Descripción** *(opcional)*
3. Pulsar **💾 Guardar**.

### Editar un destino
1. Pulsar el botón **✏** en la fila del destino.
2. Modificar los campos necesarios.
3. Pulsar **💾 Guardar cambios**.

### Eliminar un destino
1. Pulsar el botón **🗑** en la fila del destino.
2. Confirmar en el diálogo que aparece.

---

## Módulo: Lugares de Interés

### Ver todos los lugares
1. Desde el menú, pulsar **Lugares de interés**.
2. Se muestra la lista con nombre, tipo (badge de color), precio, duración y destino.
3. Usar el **buscador** para filtrar por nombre, tipo o destino.

### Crear un lugar
1. Pulsar **➕ Nuevo lugar**.
2. Rellenar los campos:
   - **Nombre** *(obligatorio)*
   - **Descripción** *(opcional)*
   - **Tipo de actividad**: Cultura / Naturaleza / Gastronomía / Ocio *(obligatorio)*
   - **Precio de entrada (€)** *(0 si es gratuito)*
   - **Duración estimada (horas)** *(obligatorio, mínimo 0.5)*
   - **Destino** *(obligatorio)*
3. Pulsar **💾 Guardar**.

### Editar o eliminar un lugar
Igual que en destinos: botón **✏** para editar, botón **🗑** para eliminar con confirmación.

---

## Módulo: Itinerarios

### Planificar un nuevo viaje
1. Desde el menú, pulsar **Planificar viaje** (o desde la lista de itinerarios).
2. Rellenar el formulario:
   - **Nombre del viaje** *(ejemplo: "Semana en Roma")*
   - **Destino** *(seleccionar de la lista)*
   - **Duración** *(1 a 30 días)*
   - **Presupuesto total (€)* *(el sistema lo distribuirá por días)*
   - **Preferencias** *(marcar una o varias; si no se marca ninguna, se incluyen todos los tipos)*
3. Pulsar **✨ Generar itinerario**.
4. El sistema crea el itinerario automáticamente y redirige al listado.

### Ver el detalle de un itinerario
1. En el listado, pulsar el botón **👁** del itinerario.
2. Se muestra el resumen (destino, duración, presupuesto, preferencias) y las actividades organizadas por día.
3. Al final aparece el **coste total estimado** del itinerario.

### Descargar el itinerario en PDF
1. Desde la vista de detalle, pulsar **📄 Descargar PDF**.
2. El navegador descarga automáticamente un archivo `.pdf` con el itinerario completo.

### Marcar como favorito
- En el listado: pulsar el botón **☆** para añadir a favoritos (cambia a **⭐**).
- En la vista de detalle: pulsar **☆ Añadir favorito** / **⭐ Quitar favorito**.

### Eliminar un itinerario
1. En el listado, pulsar el botón **🗑**.
2. Confirmar en el diálogo.

---

## Cambio de idioma

En cualquier página de listado, pulsar la bandera correspondiente en la esquina superior derecha:
- 🇪🇸 Español
- 🇬🇧 English

---

## API REST y documentación

Para acceder a la documentación interactiva de la API:

```
http://localhost:8080/swagger-ui.html
```

Desde Swagger UI se pueden probar todos los endpoints directamente en el navegador.
