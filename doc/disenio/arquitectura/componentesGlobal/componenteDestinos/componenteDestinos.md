# Componente Destinos

El módulo de Destinos gestiona dos entidades relacionadas: `Destino` y `LugarTuristico`.

## Estructura interna

```
destinos/
├── application/
│   ├── command/
│   │   ├── destino/   CreateDestinoCommand, EditDestinoCommand
│   │   └── lugar/     CreateLugarCommand, EditLugarCommand
│   ├── service/
│   │   ├── destino/   CreateDestinoService, FindDestinoService, EditDestinoService, DeleteDestinoService
│   │   └── lugar/     CreateLugarService, FindLugarService, EditLugarService, DeleteLugarService
│   └── useCase/
│       ├── destino/   CreateDestinoUseCase, FindDestinoUseCase, EditDestinoUseCase, DeleteDestinoUseCase
│       └── lugar/     CreateLugarUseCase, FindLugarUseCase, EditLugarUseCase, DeleteLugarUseCase
├── domain/
│   ├── error/         DestinoNotFoundException, LugarTuristicoNotFoundException, EntityNotFoundException
│   ├── model/
│   │   ├── destino/   Destino, DestinoId
│   │   └── lugar/     LugarTuristico, LugarTuristicoId
│   └── repository/    DestinoRepository, LugarTuristicoRepository
└── infraestructure/
    ├── config/        DestinoConfig, LugarConfig, OpenApiConfig
    ├── db/jpa/
    │   ├── entity/    DestinoJpaEntity, LugarTuristicoJpaEntity
    │   └── repository/ DestinoEntityJpaRepository, DestinoJpaRepositoryImpl,
    │                   LugarTuristicoEntityJpaRepository, LugarTuristicoJpaRepositoryImpl
    ├── mapper/        DestinoMapper, LugarTuristicoMapper
    └── web/
        ├── constants/ WebRoutes
        ├── dto/       DestinoRequest, DestinoResponse, LugarRequest, LugarResponse
        ├── enums/     ThymView, ModelAttribute
        ├── rest/      DestinoRestController, LugarTuristicoRestController
        └── view/      PlanificadorViewController
```

## Relación entre entidades

`Destino` (1) ——— (N) `LugarTuristico`

Un destino puede tener múltiples lugares turísticos. Cada lugar pertenece obligatoriamente a un destino.
