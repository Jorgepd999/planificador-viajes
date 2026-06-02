package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.enums;

public enum ModelAttribute {
    DESTINO_LIST("destinos"),
    LUGAR_LIST("lugares"),
    ITINERARIO_LIST("itinerarios"),
    SINGLE_DESTINO("destino"),
    SINGLE_LUGAR("lugar"),
    SINGLE_ITINERARIO("itinerario"),
    ERROR_MESSAGE("errorMsg"),
    SUCCESS_MESSAGE("successMsg");

    private final String name;

    ModelAttribute(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }
}
