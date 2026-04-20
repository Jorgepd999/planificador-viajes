package es.etg.daw.tfg.java.rest.planificador.destinos.infraestructure.web.constants;

public interface WebRoutes {

    String HOME = "/web/menu";

    String DESTINOS_LISTA   = "/web/destinos/lista";
    String DESTINO_NUEVO    = "/web/destinos/nuevo";
    String DESTINO_EDITAR   = "/web/destinos/editar/{id}";
    String DESTINO_BORRAR   = "/web/destinos/borrar";
    String DESTINO_BORRAR_ID = "/web/destinos/borrar/{id}";
    String DESTINO_MODIFICAR = "/web/destinos/modificar";

    String LUGARES_LISTA      = "/web/lugares/lista";
    String LUGAR_NUEVO        = "/web/lugares/nuevo";
    String LUGAR_EDITAR       = "/web/lugares/editar/{id}";
    String LUGAR_BORRAR       = "/web/lugares/borrar";
    String LUGAR_BORRAR_ID    = "/web/lugares/borrar/{id}";
    String LUGAR_MODIFICAR    = "/web/lugares/modificar";

    String ITINERARIOS_LISTA    = "/web/itinerarios/lista";
    String ITINERARIO_NUEVO     = "/web/itinerarios/nuevo";
    String ITINERARIO_GENERAR   = "/web/itinerarios/generar";
    String ITINERARIO_VER       = "/web/itinerarios/ver/{id}";
    String ITINERARIO_BORRAR_ID = "/web/itinerarios/borrar/{id}";
    String ITINERARIO_FAVORITO  = "/web/itinerarios/favorito/{id}";
}
