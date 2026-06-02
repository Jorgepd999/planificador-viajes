package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.enums;

public enum ThymView {

    HOME("home"),

    DESTINOS_LISTA("destinos-lista"),
    DESTINOS_LISTA_MODIFICAR("destinos-lista-modificar"),
    DESTINOS_LISTA_BORRAR("destinos-lista-borrar"),
    DESTINOS_FORMULARIO_NUEVO("destinos-formulario-nuevo"),
    DESTINOS_FORMULARIO_EDITAR("destinos-formulario-editar"),

    LUGARES_LISTA("lugares-lista"),
    LUGARES_LISTA_MODIFICAR("lugares-lista-modificar"),
    LUGARES_LISTA_BORRAR("lugares-lista-borrar"),
    LUGARES_FORMULARIO_NUEVO("lugares-formulario-nuevo"),
    LUGARES_FORMULARIO_EDITAR("lugares-formulario-editar"),

    ITINERARIOS_LISTA("itinerarios-lista"),
    ITINERARIO_FORMULARIO_NUEVO("itinerario-formulario-nuevo"),
    ITINERARIO_VER("itinerario-ver");

    private final String path;

    ThymView(String path) {
        this.path = path;
    }

    public String getPath() {
        return this.path;
    }
}
