# Componente Itinerarios

El módulo de Itinerarios gestiona la creación automática y administración de itinerarios de viaje, incluyendo los ítems por día y el sistema de favoritos.

## Estructura interna

```
itinerarios/
├── application/
│   ├── command/   CreateItinerarioCommand
│   ├── service/   GenerarItinerarioService, FindItinerarioService,
│   │              DeleteItinerarioService, MarcarFavoritoService
│   └── useCase/   GenerarItinerarioUseCase, FindItinerarioUseCase,
│                  DeleteItinerarioUseCase, MarcarFavoritoUseCase
├── domain/
│   ├── error/     ItinerarioNotFoundException
│   ├── model/     Itinerario, ItinerarioId, ItemItinerario
│   └── repository/ ItinerarioRepository
└── infraestructure/
    ├── config/    ItinerarioConfig
    ├── db/jpa/
    │   ├── entity/    ItinerarioJpaEntity, ItemItinerarioJpaEntity
    │   └── repository/ ItinerarioEntityJpaRepository, ItinerarioJpaRepositoryImpl
    ├── mapper/    ItinerarioMapper, ItinerarioWebMapper
    ├── pdf/       PdfService
    └── web/
        ├── dto/   ItinerarioRequest, ItinerarioResponse, ItemItinerarioResponse
        └── rest/  ItinerarioRestController
```

## Algoritmo de generación

`GenerarItinerarioUseCase` implementa el algoritmo de distribución:

1. Consulta los lugares turísticos del destino seleccionado.
2. Filtra por las preferencias indicadas (si se especifican).
3. Ordena por precio ascendente para maximizar el número de actividades.
4. Itera día a día, asignando lugares que cumplan:
   - Horas disponibles restantes en el día (máx. 8 h/día).
   - Gasto diario dentro del 120 % del presupuesto por día.
   - Presupuesto total restante suficiente.
5. Cada lugar se usa como máximo una vez en todo el itinerario.
