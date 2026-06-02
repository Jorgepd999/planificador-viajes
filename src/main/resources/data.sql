-- Usuarios (contraseñas cifradas con BCrypt)
-- jorge.perez  / admin123  (ADMIN)
-- david.aguilar/ admin123  (ADMIN)
-- maria.garcia / user123   (USER)
INSERT INTO USUARIOS (username, password, nombre, email, rol, enabled) VALUES ('jorge.perez', '$2a$10$YwcZKKL65WVthFQu4cqR0uDHjEax.Rv386ITxfPahi1c1AR954Kmi', 'Jorge Pérez', 'jorge.perez@planificador.es', 'ADMIN', TRUE);
INSERT INTO USUARIOS (username, password, nombre, email, rol, enabled) VALUES ('david.aguilar', '$2a$10$YwcZKKL65WVthFQu4cqR0uDHjEax.Rv386ITxfPahi1c1AR954Kmi', 'David Aguilar', 'david.aguilar@planificador.es', 'ADMIN', TRUE);
INSERT INTO USUARIOS (username, password, nombre, email, rol, enabled) VALUES ('maria.garcia', '$2a$10$xIJaUxHfXJ2ZBSpLYi9ve.yPmQTNaN9smHiSMBsHXUSXIhP/3ZZhW', 'María García', 'maria.garcia@planificador.es', 'USER', TRUE);

-- Destinos
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Barcelona', 'España', 'Ciudad cosmopolita a orillas del Mediterráneo, famosa por su arquitectura modernista.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Paris', 'Francia', 'La ciudad de la luz, capital del arte, la moda y la gastronomía.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Roma', 'Italia', 'La ciudad eterna, cuna de la civilización occidental con monumentos milenarios.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Amsterdam', 'Países Bajos', 'Ciudad de canales y museos, conocida por su arquitectura y cultura.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Tokio', 'Japón', 'Metrópolis ultramoderna que combina tradición milenaria con tecnología de vanguardia.');

-- Lugares turísticos - Barcelona
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Sagrada Familia', 'Basílica de arquitectura modernista de Gaudí, símbolo de Barcelona.', 'cultura', 26.0, 2.5, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Park Güell', 'Parque público con obras del arquitecto Antoni Gaudí.', 'cultura', 10.0, 2.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('La Boqueria', 'Mercado cubierto con una gran variedad de productos frescos y tapas.', 'gastronomia', 0.0, 1.5, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barceloneta', 'Playa urbana en el corazón de la ciudad.', 'ocio', 0.0, 3.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Montjuïc', 'Colina con vistas panorámicas, castillo y jardines.', 'naturaleza', 5.0, 3.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casa Batlló', 'Obra maestra del modernismo de Gaudí en el Paseo de Gracia.', 'cultura', 35.0, 1.5, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('El Born', 'Barrio histórico con tiendas, bares y el mercado de Santa Caterina.', 'gastronomia', 0.0, 2.0, 1);

-- Lugares turísticos - Paris
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Eiffel', 'Icónica torre de hierro forjado símbolo de París.', 'cultura', 29.4, 2.5, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Musée du Louvre', 'El mayor museo del mundo con la Mona Lisa.', 'cultura', 22.0, 4.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Montmartre', 'Barrio bohemio con la Basílica del Sagrado Corazón.', 'cultura', 0.0, 2.5, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardines de Versalles', 'Espectaculares jardines del Palacio de Versalles.', 'naturaleza', 20.0, 4.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Le Marais', 'Barrio histórico con galerías, restaurantes y el barrio judío.', 'gastronomia', 0.0, 3.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Moulin Rouge', 'Famoso cabaret con espectáculos nocturnos.', 'ocio', 87.0, 2.5, 2);

-- Lugares turísticos - Roma
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Coliseo', 'Anfiteatro romano del siglo I, símbolo de Roma.', 'cultura', 18.0, 2.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Vaticano', 'Estado independiente con la Basílica de San Pedro y los Museos Vaticanos.', 'cultura', 20.0, 4.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Fontana di Trevi', 'Magnífica fuente barroca, la más grande de Roma.', 'cultura', 0.0, 1.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Campo de Fiori', 'Animada plaza con mercado matutino y vida nocturna.', 'gastronomia', 0.0, 2.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Villa Borghese', 'Parque urbano con galería de arte y lago.', 'naturaleza', 15.0, 3.0, 3);

-- Lugares turísticos - Amsterdam
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casa de Ana Frank', 'Museo en la casa donde se escondió Ana Frank durante la ocupación nazi.', 'cultura', 16.0, 1.5, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Rijksmuseum', 'Museo nacional con obras de Rembrandt y Vermeer.', 'cultura', 22.5, 3.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo Van Gogh', 'La mayor colección de obras de Vincent van Gogh.', 'cultura', 20.0, 2.5, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo en barco por los canales', 'Recorrido por los canales del siglo XVII, Patrimonio de la Humanidad.', 'ocio', 18.0, 1.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Vondelpark', 'El parque urbano más popular de la ciudad.', 'naturaleza', 0.0, 2.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Albert Cuyp', 'Mercado callejero con comida típica neerlandesa.', 'gastronomia', 0.0, 1.5, 4);

-- Lugares turísticos - Tokio
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Templo Senso-ji', 'El templo budista más antiguo de Tokio, en el barrio de Asakusa.', 'cultura', 0.0, 1.5, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Cruce de Shibuya', 'El cruce peatonal más transitado del mundo.', 'ocio', 0.0, 1.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Tokyo Skytree', 'Torre de comunicaciones con mirador a 450 m de altura.', 'ocio', 25.0, 2.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado de Tsukiji', 'Mercado exterior famoso por su sushi y marisco fresco.', 'gastronomia', 0.0, 2.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Ueno', 'Gran parque con museos, templos y cerezos en flor.', 'naturaleza', 0.0, 3.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palacio Imperial', 'Residencia oficial del Emperador rodeada de jardines.', 'cultura', 0.0, 2.0, 5);

-- Destinos adicionales
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Lisboa', 'Portugal', 'Capital portuguesa de colinas, tranvías y miradores sobre el Tajo.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Londres', 'Reino Unido', 'Metrópolis histórica y cosmopolita a orillas del Támesis.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Nueva York', 'Estados Unidos', 'La ciudad que nunca duerme, icono cultural y financiero mundial.');

-- Lugares turísticos - Lisboa (destino 6)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre de Belém', 'Fortaleza manuelina del siglo XVI junto al río Tajo.', 'cultura', 8.0, 1.5, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Monasterio de los Jerónimos', 'Joya del estilo manuelino, Patrimonio de la Humanidad.', 'cultura', 12.0, 2.0, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Tranvía 28', 'Histórico tranvía amarillo que recorre los barrios antiguos.', 'ocio', 3.0, 1.0, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio de Alfama', 'El barrio más antiguo, cuna del fado.', 'gastronomia', 0.0, 2.5, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Santa Luzia', 'Mirador con vistas panorámicas de Alfama y el río.', 'naturaleza', 0.0, 1.0, 6);

-- Lugares turísticos - Londres (destino 7)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre de Londres', 'Fortaleza histórica que guarda las Joyas de la Corona.', 'cultura', 33.0, 2.5, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('British Museum', 'Museo con colecciones de la historia de la humanidad.', 'cultura', 0.0, 3.0, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('London Eye', 'Noria gigante con vistas del Támesis y el skyline.', 'ocio', 32.0, 1.0, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Hyde Park', 'Uno de los grandes parques reales del centro de Londres.', 'naturaleza', 0.0, 2.0, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Borough Market', 'Mercado gastronómico con productos de todo el mundo.', 'gastronomia', 0.0, 1.5, 7);

-- Lugares turísticos - Nueva York (destino 8)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Estatua de la Libertad', 'Símbolo de la libertad en la isla de Liberty Island.', 'cultura', 24.0, 3.0, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Central Park', 'Gran parque urbano en el corazón de Manhattan.', 'naturaleza', 0.0, 3.0, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Empire State Building', 'Rascacielos art déco con mirador en la planta 86.', 'ocio', 44.0, 1.5, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Times Square', 'Intersección icónica famosa por sus pantallas luminosas.', 'ocio', 0.0, 1.0, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('MoMA', 'Museo de Arte Moderno con obras de Van Gogh y Warhol.', 'cultura', 30.0, 2.5, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Chelsea Market', 'Mercado gastronómico en una antigua fábrica de galletas.', 'gastronomia', 0.0, 1.5, 8);

-- ============================================================
-- LUGARES ADICIONALES PARA LOS DESTINOS EXISTENTES (1-8)
-- ============================================================

-- Más lugares - Barcelona (1)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Camp Nou', 'Estadio del FC Barcelona y museo del club.', 'ocio', 28.0, 2.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Barcelona', 'Catedral gótica en el corazón del Barri Gòtic.', 'cultura', 9.0, 1.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Tibidabo', 'Montaña con parque de atracciones y vistas de la ciudad.', 'ocio', 28.5, 3.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Las Ramblas', 'Famoso paseo arbolado en el centro de Barcelona.', 'ocio', 0.0, 1.5, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Hospital de Sant Pau', 'Conjunto modernista declarado Patrimonio de la Humanidad.', 'cultura', 16.0, 1.5, 1);

-- Más lugares - Paris (2)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Arco del Triunfo', 'Monumento en honor a las victorias napoleónicas.', 'cultura', 13.0, 1.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Notre-Dame', 'Catedral gótica a orillas del Sena.', 'cultura', 0.0, 1.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Musée d''Orsay', 'Museo de arte impresionista en una antigua estación.', 'cultura', 16.0, 2.5, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Disneyland Paris', 'El parque temático más visitado de Europa.', 'ocio', 97.0, 8.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Crucero por el Sena', 'Paseo en barco entre los principales monumentos.', 'ocio', 15.0, 1.0, 2);

-- Más lugares - Roma (3)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Panteón de Agripa', 'Templo romano con una cúpula perfecta de hormigón.', 'cultura', 0.0, 1.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Navona', 'Plaza barroca con fuentes de Bernini.', 'cultura', 0.0, 1.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Trastevere', 'Barrio bohemio de calles empedradas y trattorias.', 'gastronomia', 0.0, 2.5, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Castel Sant''Angelo', 'Mausoleo de Adriano convertido en fortaleza papal.', 'cultura', 15.0, 1.5, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Escalinata de la Plaza de España', 'Famosa escalinata monumental del siglo XVIII.', 'cultura', 0.0, 0.5, 3);

-- Más lugares - Amsterdam (4)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Heineken Experience', 'Visita interactiva a la histórica fábrica de cerveza.', 'gastronomia', 23.0, 2.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Jordaan', 'Pintoresco barrio de canales, galerías y cafés.', 'ocio', 0.0, 2.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado de las flores', 'Mercado flotante de flores y bulbos de tulipán.', 'naturaleza', 0.0, 1.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('NEMO Science Museum', 'Museo de ciencia interactivo ideal para familias.', 'cultura', 17.5, 2.5, 4);

-- Más lugares - Tokio (5)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Akihabara', 'Barrio de la electrónica, el anime y los videojuegos.', 'ocio', 0.0, 2.5, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre de Tokio', 'Torre de comunicaciones inspirada en la Torre Eiffel.', 'ocio', 18.0, 1.5, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Harajuku', 'Epicentro de la moda juvenil y la cultura kawaii.', 'ocio', 0.0, 2.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Santuario Meiji', 'Santuario sintoísta rodeado de un bosque urbano.', 'cultura', 0.0, 1.5, 5);

-- Más lugares - Lisboa (6)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Castillo de San Jorge', 'Fortaleza morisca con vistas sobre toda Lisboa.', 'cultura', 15.0, 2.0, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Elevador de Santa Justa', 'Ascensor de hierro neogótico del centro.', 'cultura', 5.5, 0.5, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Oceanário de Lisboa', 'Uno de los mayores acuarios de Europa.', 'naturaleza', 25.0, 2.5, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza del Comercio', 'Gran plaza junto al río abierta al Tajo.', 'ocio', 0.0, 1.0, 6);

-- Más lugares - Londres (7)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Big Ben y Westminster', 'Icónica torre del reloj junto al Parlamento.', 'cultura', 0.0, 1.0, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palacio de Buckingham', 'Residencia oficial de la monarquía británica.', 'cultura', 30.0, 1.5, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Tower Bridge', 'Puente levadizo victoriano sobre el Támesis.', 'cultura', 12.3, 1.0, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Camden Market', 'Mercado alternativo de moda, arte y comida callejera.', 'gastronomia', 0.0, 2.0, 7);

-- Más lugares - Nueva York (8)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Puente de Brooklyn', 'Histórico puente colgante con vistas del skyline.', 'ocio', 0.0, 1.5, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Rockefeller Center', 'Complejo con el mirador Top of the Rock.', 'ocio', 40.0, 1.5, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Memorial del 11-S', 'Monumento y museo en la Zona Cero.', 'cultura', 28.0, 2.0, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('The High Line', 'Parque elevado sobre una antigua vía de tren.', 'naturaleza', 0.0, 1.5, 8);

-- ============================================================
-- NUEVOS DESTINOS (9-24) Y SUS LUGARES
-- ============================================================

INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Berlín', 'Alemania', 'Capital alemana cargada de historia, arte urbano y vida nocturna.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Praga', 'Chequia', 'La ciudad de las cien torres, joya medieval a orillas del Moldava.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Viena', 'Austria', 'Capital imperial de la música clásica y los cafés históricos.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Atenas', 'Grecia', 'Cuna de la democracia y la filosofía occidental.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Estambul', 'Turquía', 'Ciudad entre dos continentes, donde Oriente y Occidente se funden.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('El Cairo', 'Egipto', 'Puerta a las pirámides y a milenios de historia faraónica.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Marrakech', 'Marruecos', 'Ciudad imperial de zocos, palacios y jardines.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Dubái', 'Emiratos Árabes Unidos', 'Metrópolis futurista de rascacielos y lujo en el desierto.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Bangkok', 'Tailandia', 'Capital tailandesa de templos dorados y mercados vibrantes.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Sídney', 'Australia', 'Ciudad costera famosa por su ópera y sus playas.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Río de Janeiro', 'Brasil', 'Ciudad maravillosa de playas, samba y montañas.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Buenos Aires', 'Argentina', 'La París de Sudamérica, cuna del tango.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('San Francisco', 'Estados Unidos', 'Ciudad de colinas, tranvías y el Golden Gate.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Venecia', 'Italia', 'Ciudad de canales, góndolas y palacios sobre el agua.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Florencia', 'Italia', 'Cuna del Renacimiento, capital de la Toscana.');
INSERT INTO DESTINOS (nombre, pais, descripcion) VALUES ('Edimburgo', 'Reino Unido', 'Capital escocesa de castillos, callejones y leyendas.');

-- Lugares turísticos - Berlín (9)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Puerta de Brandeburgo', 'Símbolo de la reunificación alemana.', 'cultura', 0.0, 0.5, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('East Side Gallery', 'Tramo del Muro de Berlín convertido en galería de arte.', 'cultura', 0.0, 1.5, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Isla de los Museos', 'Conjunto de cinco museos en el río Spree.', 'cultura', 19.0, 3.0, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Reichstag', 'Sede del Parlamento con cúpula de cristal.', 'cultura', 0.0, 1.5, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Tiergarten', 'El gran parque público en el centro de Berlín.', 'naturaleza', 0.0, 2.0, 9);

-- Lugares turísticos - Praga (10)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Puente de Carlos', 'Puente medieval con estatuas barrocas.', 'cultura', 0.0, 1.0, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Castillo de Praga', 'El mayor castillo antiguo del mundo.', 'cultura', 12.5, 2.5, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Reloj Astronómico', 'Reloj medieval en la Plaza de la Ciudad Vieja.', 'cultura', 0.0, 0.5, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Judío', 'Antiguo gueto con sinagogas históricas.', 'cultura', 15.0, 2.0, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Crucero por el Moldava', 'Paseo en barco por el río de Praga.', 'ocio', 20.0, 1.5, 10);

-- Lugares turísticos - Viena (11)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palacio de Schönbrunn', 'Palacio imperial con magníficos jardines.', 'cultura', 26.0, 3.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de San Esteban', 'Catedral gótica símbolo de Viena.', 'cultura', 6.0, 1.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ópera Estatal de Viena', 'Uno de los teatros de ópera más prestigiosos.', 'cultura', 12.0, 2.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Prater', 'Parque con la histórica noria gigante.', 'ocio', 0.0, 2.5, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Café Central', 'Histórico café vienés frecuentado por intelectuales.', 'gastronomia', 0.0, 1.0, 11);

-- Lugares turísticos - Atenas (12)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acrópolis y Partenón', 'Conjunto monumental de la antigua Grecia.', 'cultura', 20.0, 2.5, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de la Acrópolis', 'Museo con los hallazgos de la colina sagrada.', 'cultura', 10.0, 2.0, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ágora Antigua', 'Centro de la vida pública de la Atenas clásica.', 'cultura', 10.0, 1.5, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio de Plaka', 'Casco antiguo de calles peatonales y tabernas.', 'gastronomia', 0.0, 2.0, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Monte Licabeto', 'La colina más alta con vistas de toda Atenas.', 'naturaleza', 0.0, 1.5, 12);

-- Lugares turísticos - Estambul (13)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Santa Sofía', 'Antigua basílica y mezquita, joya bizantina.', 'cultura', 25.0, 1.5, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mezquita Azul', 'Mezquita imperial de seis minaretes.', 'cultura', 0.0, 1.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Gran Bazar', 'Uno de los mercados cubiertos más grandes del mundo.', 'gastronomia', 0.0, 2.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palacio de Topkapi', 'Residencia de los sultanes otomanos.', 'cultura', 17.0, 2.5, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Crucero por el Bósforo', 'Travesía entre Europa y Asia.', 'ocio', 15.0, 2.0, 13);

-- Lugares turísticos - El Cairo (14)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Pirámides de Giza', 'Las únicas maravillas del mundo antiguo que perduran.', 'cultura', 12.0, 3.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Gran Esfinge', 'Colosal estatua con cuerpo de león y rostro humano.', 'cultura', 0.0, 1.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo Egipcio', 'Mayor colección de antigüedades faraónicas.', 'cultura', 11.0, 2.5, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Bazar Khan el-Khalili', 'Mercado histórico de artesanía y especias.', 'gastronomia', 0.0, 2.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ciudadela de Saladino', 'Fortaleza medieval con la mezquita de alabastro.', 'cultura', 9.0, 1.5, 14);

-- Lugares turísticos - Marrakech (15)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Jemaa el-Fna', 'Plaza principal llena de vida día y noche.', 'ocio', 0.0, 2.0, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Majorelle', 'Jardín botánico de intenso color azul.', 'naturaleza', 8.0, 1.5, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palacio de la Bahía', 'Palacio del siglo XIX con patios y jardines.', 'cultura', 7.0, 1.5, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Zocos de Marrakech', 'Laberinto de mercados tradicionales.', 'gastronomia', 0.0, 2.5, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mezquita Koutoubia', 'La mayor mezquita de la ciudad, con su minarete.', 'cultura', 0.0, 1.0, 15);

-- Lugares turísticos - Dubái (16)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Burj Khalifa', 'El edificio más alto del mundo con mirador.', 'ocio', 40.0, 2.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Dubai Mall', 'Uno de los mayores centros comerciales del mundo.', 'ocio', 0.0, 3.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palm Jumeirah', 'Isla artificial con forma de palmera.', 'ocio', 0.0, 2.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Safari por el desierto', 'Excursión en 4x4 por las dunas con cena beduina.', 'naturaleza', 55.0, 5.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Zoco del Oro', 'Mercado tradicional de joyería en Deira.', 'gastronomia', 0.0, 1.5, 16);

-- Lugares turísticos - Bangkok (17)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Gran Palacio', 'Antigua residencia real con el Buda Esmeralda.', 'cultura', 13.0, 2.5, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Wat Pho', 'Templo del Buda reclinado de 46 metros.', 'cultura', 5.0, 1.5, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado flotante', 'Compra desde barcas en los canales de Damnoen Saduak.', 'gastronomia', 0.0, 3.0, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Wat Arun', 'Templo del Amanecer a orillas del río Chao Phraya.', 'cultura', 3.0, 1.0, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Khao San Road', 'Calle mochilera de bares y puestos de comida.', 'ocio', 0.0, 2.0, 17);

-- Lugares turísticos - Sídney (18)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ópera de Sídney', 'Emblemático edificio Patrimonio de la Humanidad.', 'cultura', 43.0, 1.5, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Harbour Bridge', 'Gran puente de acero sobre la bahía.', 'ocio', 0.0, 1.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Bondi Beach', 'La playa urbana más famosa de Australia.', 'ocio', 0.0, 3.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Sea Life Aquarium', 'Acuario con la mayor variedad de fauna marina australiana.', 'naturaleza', 35.0, 2.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('The Rocks', 'Barrio histórico con mercados y restaurantes.', 'gastronomia', 0.0, 2.0, 18);

-- Lugares turísticos - Río de Janeiro (19)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Cristo Redentor', 'Estatua icónica sobre el cerro del Corcovado.', 'cultura', 25.0, 2.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Pan de Azúcar', 'Montaña con teleférico y vistas de la bahía.', 'naturaleza', 28.0, 2.5, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Playa de Copacabana', 'Famosa playa de arena blanca y paseo marítimo.', 'ocio', 0.0, 3.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Escadaria Selarón', 'Escalinata cubierta de azulejos de colores.', 'cultura', 0.0, 1.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Estadio Maracaná', 'Templo del fútbol brasileño.', 'ocio', 18.0, 1.5, 19);

-- Lugares turísticos - Buenos Aires (20)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('La Boca y Caminito', 'Barrio colorido cuna del tango.', 'cultura', 0.0, 1.5, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Cementerio de la Recoleta', 'Necrópolis monumental con la tumba de Evita.', 'cultura', 0.0, 2.0, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Colón', 'Uno de los mejores teatros de ópera del mundo.', 'cultura', 15.0, 1.5, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Puerto Madero', 'Moderno barrio de restaurantes junto al agua.', 'gastronomia', 0.0, 2.0, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Espectáculo de tango', 'Show de tango con cena en San Telmo.', 'ocio', 50.0, 2.5, 20);

-- Lugares turísticos - San Francisco (21)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Golden Gate Bridge', 'El puente colgante más fotografiado del mundo.', 'naturaleza', 0.0, 1.5, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Alcatraz', 'Antigua prisión federal en una isla de la bahía.', 'cultura', 41.0, 2.5, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Fisherman''s Wharf', 'Muelle con marisquerías y leones marinos.', 'gastronomia', 0.0, 2.0, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Tranvías históricos', 'Los icónicos cable cars de las empinadas calles.', 'ocio', 8.0, 1.0, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Golden Gate Park', 'Gran parque urbano con jardines y museos.', 'naturaleza', 0.0, 2.5, 21);

-- Lugares turísticos - Venecia (22)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza de San Marcos', 'La plaza principal y corazón de Venecia.', 'cultura', 0.0, 1.5, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Basílica de San Marcos', 'Catedral bizantina con mosaicos dorados.', 'cultura', 3.0, 1.0, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo en góndola', 'Recorrido tradicional por los canales.', 'ocio', 80.0, 0.5, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Puente de Rialto', 'El puente más antiguo sobre el Gran Canal.', 'cultura', 0.0, 0.5, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palacio Ducal', 'Palacio gótico de los antiguos dux.', 'cultura', 25.0, 2.0, 22);

-- Lugares turísticos - Florencia (23)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Santa María del Fiore', 'Duomo con la cúpula de Brunelleschi.', 'cultura', 20.0, 1.5, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería Uffizi', 'Museo con obras maestras del Renacimiento.', 'cultura', 25.0, 3.0, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ponte Vecchio', 'Puente medieval con joyerías sobre el Arno.', 'cultura', 0.0, 0.5, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de la Academia', 'Hogar del David de Miguel Ángel.', 'cultura', 16.0, 1.5, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Piazzale Michelangelo', 'Mirador con la mejor panorámica de Florencia.', 'naturaleza', 0.0, 1.0, 23);

-- Lugares turísticos - Edimburgo (24)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Castillo de Edimburgo', 'Fortaleza sobre una roca volcánica.', 'cultura', 22.0, 2.0, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Royal Mile', 'Calle histórica que une el castillo y el palacio.', 'cultura', 0.0, 1.5, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Arthur''s Seat', 'Colina volcánica con vistas de toda la ciudad.', 'naturaleza', 0.0, 2.5, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Calton Hill', 'Colina con monumentos neoclásicos y miradores.', 'naturaleza', 0.0, 1.0, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Dean Village', 'Pintoresco rincón junto al río Leith.', 'ocio', 0.0, 1.0, 24);

-- ============================================================
-- COMPLEMENTO: garantizar al menos 12 lugares por destino
-- ============================================================

-- Más lugares - Paris (2) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Latino', 'Animado barrio estudiantil de bistrós y librerías.', 'gastronomia', 0.0, 2.0, 2);

-- Más lugares - Roma (3) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Foro Romano', 'Conjunto de ruinas del centro político de la antigua Roma.', 'cultura', 18.0, 2.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Termas de Caracalla', 'Imponentes ruinas de las termas imperiales.', 'cultura', 8.0, 1.5, 3);

-- Más lugares - Amsterdam (4) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Begijnhof', 'Tranquilo patio medieval en el centro de la ciudad.', 'cultura', 0.0, 1.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Zaanse Schans', 'Pueblo con molinos de viento históricos.', 'naturaleza', 0.0, 3.0, 4);

-- Más lugares - Tokio (5) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Odaiba', 'Isla artificial de ocio, compras y tecnología.', 'ocio', 0.0, 3.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Templo Gotokuji', 'Templo de los gatos de la suerte (maneki-neko).', 'cultura', 0.0, 1.5, 5);

-- Más lugares - Lisboa (6) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio del Chiado', 'Elegante barrio de cafés históricos y comercios.', 'gastronomia', 0.0, 1.5, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Cristo Rei', 'Gran estatua sobre Almada con vistas al puente 25 de Abril.', 'cultura', 6.0, 1.5, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('LX Factory', 'Antigua fábrica reconvertida en espacio creativo.', 'ocio', 0.0, 2.0, 6);

-- Más lugares - Londres (7) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('National Gallery', 'Pinacoteca con obras maestras europeas en Trafalgar Square.', 'cultura', 0.0, 2.5, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de San Pablo', 'Catedral barroca de gran cúpula obra de Christopher Wren.', 'cultura', 21.0, 1.5, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Covent Garden', 'Mercado cubierto con tiendas, teatros y artistas callejeros.', 'gastronomia', 0.0, 1.5, 7);

-- Más lugares - Nueva York (8) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Metropolitan Museum of Art', 'Uno de los mayores museos de arte del mundo.', 'cultura', 30.0, 3.0, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Quinta Avenida', 'Avenida emblemática de tiendas de lujo.', 'ocio', 0.0, 1.5, 8);

-- Más lugares - Berlín (9) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Checkpoint Charlie', 'Famoso paso fronterizo entre los dos Berlines.', 'cultura', 0.0, 0.5, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Memorial del Holocausto', 'Campo de 2711 estelas en memoria de las víctimas.', 'cultura', 0.0, 1.0, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Berlín', 'Imponente catedral protestante junto al Spree.', 'cultura', 9.0, 1.5, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre de TV de Alexanderplatz', 'Torre con mirador giratorio a 200 metros.', 'ocio', 24.5, 1.5, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Potsdamer Platz', 'Moderna plaza con cines, tiendas y rascacielos.', 'ocio', 0.0, 1.5, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palacio de Charlottenburg', 'El mayor palacio barroco de Berlín, con jardines.', 'cultura', 12.0, 2.0, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Gendarmenmarkt', 'Elegante plaza con dos catedrales gemelas.', 'gastronomia', 0.0, 1.5, 9);

-- Más lugares - Praga (10) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza de la Ciudad Vieja', 'Corazón histórico de Praga rodeado de fachadas góticas.', 'cultura', 0.0, 1.0, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Callejón del Oro', 'Pintoresca calle de casitas dentro del castillo.', 'cultura', 0.0, 0.5, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Colina de Petřín', 'Parque con torre mirador estilo Eiffel.', 'naturaleza', 0.0, 1.5, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Iglesia de Týn', 'Iglesia gótica de dos torres en la plaza vieja.', 'cultura', 0.0, 0.5, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Muro de John Lennon', 'Muro cubierto de grafitis dedicados a la paz.', 'cultura', 0.0, 0.5, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casa Danzante', 'Edificio deconstructivista a orillas del Moldava.', 'cultura', 0.0, 0.5, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Havelská', 'Mercado tradicional al aire libre en el casco antiguo.', 'gastronomia', 0.0, 1.0, 10);

-- Más lugares - Viena (11) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palacio de Hofburg', 'Antigua residencia imperial de los Habsburgo.', 'cultura', 16.0, 2.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palacio Belvedere', 'Palacio barroco que alberga "El Beso" de Klimt.', 'cultura', 17.0, 2.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia del Arte', 'Gran pinacoteca con obras de Brueghel y Velázquez.', 'cultura', 21.0, 2.5, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Hundertwasserhaus', 'Colorido edificio de formas orgánicas.', 'cultura', 0.0, 1.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Naschmarkt', 'El mercado más popular de Viena.', 'gastronomia', 0.0, 1.5, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Karlskirche', 'Espectacular iglesia barroca con cúpula.', 'cultura', 9.5, 1.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Volksgarten', 'Jardín público famoso por sus rosaledas.', 'naturaleza', 0.0, 1.0, 11);

-- Más lugares - Atenas (12) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Templo de Zeus Olímpico', 'Restos del mayor templo de la antigua Grecia.', 'cultura', 8.0, 1.0, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Estadio Panathinaikó', 'Estadio de mármol de los primeros Juegos Olímpicos modernos.', 'cultura', 5.0, 1.0, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Sintagma', 'Plaza principal con el cambio de guardia evzona.', 'cultura', 0.0, 0.5, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Monastiraki', 'Barrio de mercadillos y vistas a la Acrópolis.', 'gastronomia', 0.0, 1.5, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo Arqueológico Nacional', 'El mayor museo de antigüedades de Grecia.', 'cultura', 12.0, 2.5, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Anafiotika', 'Rincón de casas blancas estilo cicládico.', 'ocio', 0.0, 1.0, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Nacional', 'Oasis verde junto al Parlamento griego.', 'naturaleza', 0.0, 1.5, 12);

-- Más lugares - Estambul (13) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Cisterna Basílica', 'Impresionante cisterna subterránea bizantina.', 'cultura', 20.0, 1.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Bazar de las Especias', 'Colorido mercado de especias y dulces.', 'gastronomia', 0.0, 1.5, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mezquita de Solimán', 'Majestuosa mezquita otomana sobre el Cuerno de Oro.', 'cultura', 0.0, 1.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre de Gálata', 'Torre medieval con mirador sobre la ciudad.', 'ocio', 30.0, 1.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio de Balat', 'Pintoresco barrio de casas de colores.', 'ocio', 0.0, 1.5, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palacio de Dolmabahçe', 'Lujoso palacio otomano de estilo europeo.', 'cultura', 30.0, 2.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Gülhane', 'Histórico parque junto al palacio de Topkapi.', 'naturaleza', 0.0, 1.0, 13);

-- Más lugares - El Cairo (14) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mezquita de Alabastro', 'Mezquita de Muhammad Ali en la Ciudadela.', 'cultura', 0.0, 1.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Copto', 'Zona cristiana con la iglesia colgante.', 'cultura', 0.0, 1.5, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre de El Cairo', 'Torre con vistas panorámicas del Nilo.', 'ocio', 12.0, 1.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Saqqara', 'Necrópolis con la pirámide escalonada de Zoser.', 'cultura', 7.0, 2.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Crucero por el Nilo', 'Paseo en faluca al atardecer por el río.', 'ocio', 40.0, 2.5, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Calle Al-Muizz', 'Calle medieval con monumentos islámicos.', 'cultura', 0.0, 1.5, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado de Birqash', 'Tradicional mercado de camellos a las afueras.', 'gastronomia', 0.0, 2.0, 14);

-- Más lugares - Marrakech (15) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Madraza Ben Youssef', 'Antigua escuela coránica con bellos azulejos.', 'cultura', 5.0, 1.0, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Tumbas Saadíes', 'Mausoleo del siglo XVI ricamente decorado.', 'cultura', 7.0, 1.0, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palacio El Badi', 'Ruinas de un palacio saadí con nidos de cigüeñas.', 'cultura', 7.0, 1.5, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardines de la Menara', 'Olivar histórico con un estanque y pabellón.', 'naturaleza', 0.0, 1.5, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Hammam tradicional', 'Baño de vapor marroquí para relajarse.', 'ocio', 25.0, 1.5, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Medina de Marrakech', 'Casco antiguo amurallado Patrimonio de la Humanidad.', 'ocio', 0.0, 2.0, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Cena en terraza', 'Cena con vistas a la plaza y la Koutoubia.', 'gastronomia', 20.0, 1.5, 15);

-- Más lugares - Dubái (16) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Marina de Dubái', 'Paseo junto a rascacielos y yates de lujo.', 'ocio', 0.0, 2.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Dubai Frame', 'Gigantesco marco dorado entre el viejo y el nuevo Dubái.', 'cultura', 12.0, 1.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo del Futuro', 'Edificio icónico dedicado a la innovación.', 'cultura', 36.0, 2.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mezquita de Jumeirah', 'Una de las pocas mezquitas abiertas a visitantes.', 'cultura', 7.0, 1.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Al Fahidi', 'Casco histórico de casas de adobe y torres de viento.', 'cultura', 0.0, 1.5, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Fuentes de Dubái', 'Espectáculo de agua y luces frente al Burj Khalifa.', 'ocio', 0.0, 0.5, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Playa de Jumeirah', 'Playa pública con vistas al hotel Burj Al Arab.', 'naturaleza', 0.0, 2.5, 16);

-- Más lugares - Bangkok (17) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado de Chatuchak', 'Uno de los mayores mercados de fin de semana del mundo.', 'gastronomia', 0.0, 2.5, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio chino de Yaowarat', 'Vibrante zona de puestos de comida callejera.', 'gastronomia', 0.0, 2.0, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Wat Saket', 'El Monte Dorado con vistas de la ciudad.', 'cultura', 1.5, 1.0, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jim Thompson House', 'Casa-museo de teca del magnate de la seda.', 'cultura', 5.0, 1.0, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Crucero por el Chao Phraya', 'Paseo en barco por el río de los reyes.', 'ocio', 12.0, 1.5, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Lumphini', 'Gran parque verde en el centro de Bangkok.', 'naturaleza', 0.0, 1.5, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Asiatique The Riverfront', 'Mercado nocturno junto al río con noria.', 'ocio', 0.0, 2.0, 17);

-- Más lugares - Sídney (18) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Royal Botanic Garden', 'Jardín botánico junto al puerto.', 'naturaleza', 0.0, 2.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Darling Harbour', 'Zona de ocio con museos, bares y restaurantes.', 'ocio', 0.0, 2.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Taronga Zoo', 'Zoo con fauna australiana y vistas de la bahía.', 'naturaleza', 40.0, 3.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Queen Victoria Building', 'Elegante galería comercial de estilo victoriano.', 'cultura', 0.0, 1.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Manly Beach', 'Popular playa accesible en ferry.', 'ocio', 0.0, 3.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Blue Mountains', 'Excursión a montañas de bosques y miradores.', 'naturaleza', 0.0, 6.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Sydney Fish Market', 'Mercado de pescado y marisco fresco.', 'gastronomia', 0.0, 1.5, 18);

-- Más lugares - Río de Janeiro (19) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Playa de Ipanema', 'Elegante playa famosa por la bossa nova.', 'ocio', 0.0, 3.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico', 'Jardín con palmeras imperiales y orquídeas.', 'naturaleza', 8.0, 2.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio de Santa Teresa', 'Barrio bohemio de calles empinadas y arte.', 'cultura', 0.0, 1.5, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral Metropolitana', 'Catedral moderna de forma piramidal.', 'cultura', 0.0, 0.5, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Nacional de Tijuca', 'Una de las mayores selvas urbanas del mundo.', 'naturaleza', 0.0, 3.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Sambódromo', 'Avenida donde desfilan las escuelas de samba.', 'ocio', 0.0, 1.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Feira de São Cristóvão', 'Feria de cultura y gastronomía del nordeste.', 'gastronomia', 0.0, 2.0, 19);

-- Más lugares - Buenos Aires (20) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Obelisco', 'Monumento icónico en la Avenida 9 de Julio.', 'cultura', 0.0, 0.5, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza de Mayo', 'Plaza histórica con la Casa Rosada.', 'cultura', 0.0, 1.0, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('San Telmo', 'Barrio antiguo con su célebre feria dominical.', 'gastronomia', 0.0, 2.0, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Avenida 9 de Julio', 'Una de las avenidas más anchas del mundo.', 'ocio', 0.0, 0.5, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico Carlos Thays', 'Jardín histórico en el barrio de Palermo.', 'naturaleza', 0.0, 1.5, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('El Ateneo Grand Splendid', 'Librería en un antiguo teatro, de las más bellas del mundo.', 'cultura', 0.0, 1.0, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Bosques de Palermo', 'Gran parque con lagos y rosedal.', 'naturaleza', 0.0, 2.0, 20);

-- Más lugares - San Francisco (21) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Lombard Street', 'La calle más sinuosa del mundo.', 'ocio', 0.0, 0.5, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Chinatown', 'El barrio chino más antiguo de Norteamérica.', 'gastronomia', 0.0, 1.5, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Pier 39', 'Muelle con tiendas, atracciones y leones marinos.', 'ocio', 0.0, 1.5, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palace of Fine Arts', 'Monumento de estilo grecorromano junto a una laguna.', 'cultura', 0.0, 1.0, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Painted Ladies', 'Hilera de casas victorianas en Alamo Square.', 'cultura', 0.0, 0.5, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Union Square', 'Plaza central de compras y teatros.', 'ocio', 0.0, 1.0, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Twin Peaks', 'Cerros gemelos con vistas de 360 grados.', 'naturaleza', 0.0, 1.5, 21);

-- Más lugares - Venecia (22) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Gran Canal', 'La principal vía acuática de Venecia.', 'ocio', 0.0, 1.0, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Isla de Murano', 'Famosa por sus talleres de vidrio soplado.', 'cultura', 0.0, 2.5, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Isla de Burano', 'Isla de casas de colores y encaje artesanal.', 'ocio', 0.0, 2.5, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Campanile de San Marcos', 'Campanario con vistas de toda la laguna.', 'cultura', 10.0, 0.5, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de la Academia de Venecia', 'Museo de pintura veneciana.', 'cultura', 12.0, 2.0, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Puente de los Suspiros', 'Célebre puente cubierto entre el palacio y la prisión.', 'cultura', 0.0, 0.5, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado de Rialto', 'Mercado de pescado y productos frescos.', 'gastronomia', 0.0, 1.0, 22);

-- Más lugares - Florencia (23) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza de la Señoría', 'Plaza al aire libre con esculturas renacentistas.', 'cultura', 0.0, 1.0, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palacio Vecchio', 'Ayuntamiento histórico de torre almenada.', 'cultura', 12.5, 1.5, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardines de Boboli', 'Jardines monumentales tras el Palacio Pitti.', 'naturaleza', 10.0, 2.0, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Basílica de Santa Croce', 'Iglesia con las tumbas de Miguel Ángel y Galileo.', 'cultura', 8.0, 1.0, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central', 'Mercado gastronómico en San Lorenzo.', 'gastronomia', 0.0, 1.5, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palacio Pitti', 'Antigua residencia de los Médici con varios museos.', 'cultura', 16.0, 2.5, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Baptisterio de San Juan', 'Baptisterio románico con las Puertas del Paraíso.', 'cultura', 5.0, 0.5, 23);

-- Más lugares - Edimburgo (24) -> 12
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Palacio de Holyrood', 'Residencia oficial de la monarquía en Escocia.', 'cultura', 19.0, 1.5, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de St Giles', 'Principal iglesia presbiteriana del Royal Mile.', 'cultura', 0.0, 1.0, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Princes Street Gardens', 'Jardines en el valle bajo el castillo.', 'naturaleza', 0.0, 1.5, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Monumento a Walter Scott', 'Torre gótica dedicada al escritor escocés.', 'cultura', 8.0, 1.0, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo Nacional de Escocia', 'Museo de historia, ciencia y cultura escocesa.', 'cultura', 0.0, 2.0, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Grassmarket', 'Plaza histórica de pubs y mercados bajo el castillo.', 'gastronomia', 0.0, 1.5, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Real Jardín Botánico', 'Uno de los jardines botánicos más antiguos de Gran Bretaña.', 'naturaleza', 0.0, 2.0, 24);

-- ============================================================
-- LUGARES GENERICOS para completar minimo 30 por destino
-- ============================================================

-- Barcelona (1)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Barcelona', 'Paseo por el casco histórico de Barcelona.', 'cultura', 0.0, 1.5, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Barcelona (visita)', 'Principal templo histórico de Barcelona.', 'cultura', 5.0, 1.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Barcelona', 'Colección de arte de Barcelona.', 'cultura', 10.0, 2.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Barcelona', 'Historia y patrimonio de Barcelona.', 'cultura', 8.0, 2.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Barcelona', 'Mercado de productos frescos de Barcelona.', 'gastronomia', 0.0, 1.5, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta de Tapas por Barcelona', 'Degustación gastronómica por Barcelona.', 'gastronomia', 15.0, 2.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Barcelona', 'Zona verde para pasear en Barcelona.', 'naturaleza', 0.0, 1.5, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Barcelona', 'Jardín con especies vegetales en Barcelona.', 'naturaleza', 6.0, 2.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Barcelona', 'Vistas panorámicas de Barcelona.', 'naturaleza', 0.0, 1.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Barcelona', 'Espectáculos y artes escénicas en Barcelona.', 'cultura', 20.0, 2.5, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Barcelona', 'Plaza central y punto de encuentro de Barcelona.', 'cultura', 0.0, 1.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Barcelona', 'Ambiente alternativo y de ocio en Barcelona.', 'ocio', 0.0, 2.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Barcelona', 'Arte contemporáneo en Barcelona.', 'cultura', 9.0, 1.5, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Barcelona (zona)', 'Fauna marina en Barcelona.', 'naturaleza', 18.0, 2.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Barcelona', 'Diversión para todas las edades en Barcelona.', 'ocio', 30.0, 4.0, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Barcelona', 'Productos artesanales locales de Barcelona.', 'gastronomia', 0.0, 1.5, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Barcelona', 'Recorrido junto al agua en Barcelona.', 'ocio', 0.0, 1.5, 1);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Barcelona', 'Mirador elevado sobre Barcelona.', 'ocio', 8.0, 1.0, 1);

-- Paris (2)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Paris', 'Paseo por el casco histórico de Paris.', 'cultura', 0.0, 1.5, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Paris (visita)', 'Principal templo histórico de Paris.', 'cultura', 5.0, 1.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Paris', 'Colección de arte de Paris.', 'cultura', 10.0, 2.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Paris', 'Historia y patrimonio de Paris.', 'cultura', 8.0, 2.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Paris', 'Mercado de productos frescos de Paris.', 'gastronomia', 0.0, 1.5, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta de Tapas por Paris', 'Degustación gastronómica por Paris.', 'gastronomia', 15.0, 2.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Paris', 'Zona verde para pasear en Paris.', 'naturaleza', 0.0, 1.5, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Paris', 'Jardín con especies vegetales en Paris.', 'naturaleza', 6.0, 2.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Paris', 'Vistas panorámicas de Paris.', 'naturaleza', 0.0, 1.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Paris', 'Espectáculos y artes escénicas en Paris.', 'cultura', 20.0, 2.5, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Paris', 'Plaza central y punto de encuentro de Paris.', 'cultura', 0.0, 1.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Paris', 'Ambiente alternativo y de ocio en Paris.', 'ocio', 0.0, 2.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Paris', 'Arte contemporáneo en Paris.', 'cultura', 9.0, 1.5, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Paris', 'Fauna marina en Paris.', 'naturaleza', 18.0, 2.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Paris', 'Diversión para todas las edades en Paris.', 'ocio', 30.0, 4.0, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Paris', 'Productos artesanales locales de Paris.', 'gastronomia', 0.0, 1.5, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Paris', 'Recorrido junto al agua en Paris.', 'ocio', 0.0, 1.5, 2);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Paris', 'Mirador elevado sobre Paris.', 'ocio', 8.0, 1.0, 2);

-- Roma (3)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Roma', 'Paseo por el casco histórico de Roma.', 'cultura', 0.0, 1.5, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Roma (visita)', 'Principal templo histórico de Roma.', 'cultura', 5.0, 1.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Roma', 'Colección de arte de Roma.', 'cultura', 10.0, 2.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Roma', 'Historia y patrimonio de Roma.', 'cultura', 8.0, 2.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Roma', 'Mercado de productos frescos de Roma.', 'gastronomia', 0.0, 1.5, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta de Tapas por Roma', 'Degustación gastronómica por Roma.', 'gastronomia', 15.0, 2.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Roma', 'Zona verde para pasear en Roma.', 'naturaleza', 0.0, 1.5, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Roma', 'Jardín con especies vegetales en Roma.', 'naturaleza', 6.0, 2.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Roma', 'Vistas panorámicas de Roma.', 'naturaleza', 0.0, 1.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Roma', 'Espectáculos y artes escénicas en Roma.', 'cultura', 20.0, 2.5, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Roma', 'Plaza central y punto de encuentro de Roma.', 'cultura', 0.0, 1.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Roma', 'Ambiente alternativo y de ocio en Roma.', 'ocio', 0.0, 2.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Roma', 'Arte contemporáneo en Roma.', 'cultura', 9.0, 1.5, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Roma', 'Fauna marina en Roma.', 'naturaleza', 18.0, 2.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Roma', 'Diversión para todas las edades en Roma.', 'ocio', 30.0, 4.0, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Roma', 'Productos artesanales locales de Roma.', 'gastronomia', 0.0, 1.5, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Roma', 'Recorrido junto al agua en Roma.', 'ocio', 0.0, 1.5, 3);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Roma', 'Mirador elevado sobre Roma.', 'ocio', 8.0, 1.0, 3);

-- Amsterdam (4)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Amsterdam', 'Paseo por el casco histórico de Amsterdam.', 'cultura', 0.0, 1.5, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Amsterdam (visita)', 'Principal templo histórico de Amsterdam.', 'cultura', 5.0, 1.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Amsterdam', 'Colección de arte de Amsterdam.', 'cultura', 10.0, 2.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Amsterdam', 'Historia y patrimonio de Amsterdam.', 'cultura', 8.0, 2.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Amsterdam', 'Mercado de productos frescos de Amsterdam.', 'gastronomia', 0.0, 1.5, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta de Tapas por Amsterdam', 'Degustación gastronómica por Amsterdam.', 'gastronomia', 15.0, 2.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Amsterdam', 'Zona verde para pasear en Amsterdam.', 'naturaleza', 0.0, 1.5, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Amsterdam', 'Jardín con especies vegetales en Amsterdam.', 'naturaleza', 6.0, 2.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Amsterdam', 'Vistas panorámicas de Amsterdam.', 'naturaleza', 0.0, 1.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Amsterdam', 'Espectáculos y artes escénicas en Amsterdam.', 'cultura', 20.0, 2.5, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Amsterdam', 'Plaza central y punto de encuentro de Amsterdam.', 'cultura', 0.0, 1.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Amsterdam', 'Ambiente alternativo y de ocio en Amsterdam.', 'ocio', 0.0, 2.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Amsterdam', 'Arte contemporáneo en Amsterdam.', 'cultura', 9.0, 1.5, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Amsterdam', 'Fauna marina en Amsterdam.', 'naturaleza', 18.0, 2.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Amsterdam', 'Diversión para todas las edades en Amsterdam.', 'ocio', 30.0, 4.0, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Amsterdam', 'Productos artesanales locales de Amsterdam.', 'gastronomia', 0.0, 1.5, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Amsterdam', 'Recorrido junto al agua en Amsterdam.', 'ocio', 0.0, 1.5, 4);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Amsterdam', 'Mirador elevado sobre Amsterdam.', 'ocio', 8.0, 1.0, 4);

-- Tokio (5)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Tokio', 'Paseo por el casco histórico de Tokio.', 'cultura', 0.0, 1.5, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Templo Histórico de Tokio', 'Principal templo histórico de Tokio.', 'cultura', 5.0, 1.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Tokio', 'Colección de arte de Tokio.', 'cultura', 10.0, 2.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Tokio', 'Historia y patrimonio de Tokio.', 'cultura', 8.0, 2.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Tokio', 'Mercado de productos frescos de Tokio.', 'gastronomia', 0.0, 1.5, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Tokio', 'Degustación gastronómica por Tokio.', 'gastronomia', 15.0, 2.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Tokio', 'Zona verde para pasear en Tokio.', 'naturaleza', 0.0, 1.5, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Tokio', 'Jardín con especies vegetales en Tokio.', 'naturaleza', 6.0, 2.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Tokio', 'Vistas panorámicas de Tokio.', 'naturaleza', 0.0, 1.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Tokio', 'Espectáculos y artes escénicas en Tokio.', 'cultura', 20.0, 2.5, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Central de Tokio', 'Plaza central y punto de encuentro de Tokio.', 'cultura', 0.0, 1.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Tokio', 'Ambiente alternativo y de ocio en Tokio.', 'ocio', 0.0, 2.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Tokio', 'Arte contemporáneo en Tokio.', 'cultura', 9.0, 1.5, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Tokio', 'Fauna marina en Tokio.', 'naturaleza', 18.0, 2.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Tokio', 'Diversión para todas las edades en Tokio.', 'ocio', 30.0, 4.0, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Tokio', 'Productos artesanales locales de Tokio.', 'gastronomia', 0.0, 1.5, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Tokio', 'Recorrido junto al agua en Tokio.', 'ocio', 0.0, 1.5, 5);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Tokio', 'Mirador elevado sobre Tokio.', 'ocio', 8.0, 1.0, 5);

-- Lisboa (6)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Lisboa', 'Paseo por el casco histórico de Lisboa.', 'cultura', 0.0, 1.5, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Lisboa (visita)', 'Principal templo histórico de Lisboa.', 'cultura', 5.0, 1.0, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Lisboa', 'Colección de arte de Lisboa.', 'cultura', 10.0, 2.0, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Lisboa', 'Historia y patrimonio de Lisboa.', 'cultura', 8.0, 2.0, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Lisboa', 'Mercado de productos frescos de Lisboa.', 'gastronomia', 0.0, 1.5, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta de Tapas por Lisboa', 'Degustación gastronómica por Lisboa.', 'gastronomia', 15.0, 2.0, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Lisboa', 'Zona verde para pasear en Lisboa.', 'naturaleza', 0.0, 1.5, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Lisboa', 'Jardín con especies vegetales en Lisboa.', 'naturaleza', 6.0, 2.0, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Lisboa', 'Vistas panorámicas de Lisboa.', 'naturaleza', 0.0, 1.0, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Lisboa', 'Espectáculos y artes escénicas en Lisboa.', 'cultura', 20.0, 2.5, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Lisboa', 'Plaza central y punto de encuentro de Lisboa.', 'cultura', 0.0, 1.0, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Lisboa', 'Ambiente alternativo y de ocio en Lisboa.', 'ocio', 0.0, 2.0, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Lisboa', 'Arte contemporáneo en Lisboa.', 'cultura', 9.0, 1.5, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Lisboa', 'Fauna marina en Lisboa.', 'naturaleza', 18.0, 2.0, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Lisboa', 'Diversión para todas las edades en Lisboa.', 'ocio', 30.0, 4.0, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Lisboa', 'Productos artesanales locales de Lisboa.', 'gastronomia', 0.0, 1.5, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Lisboa', 'Recorrido junto al agua en Lisboa.', 'ocio', 0.0, 1.5, 6);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Lisboa', 'Mirador elevado sobre Lisboa.', 'ocio', 8.0, 1.0, 6);

-- Londres (7)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Londres', 'Paseo por el casco histórico de Londres.', 'cultura', 0.0, 1.5, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Londres (visita)', 'Principal templo histórico de Londres.', 'cultura', 5.0, 1.0, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Londres', 'Colección de arte de Londres.', 'cultura', 10.0, 2.0, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Londres', 'Historia y patrimonio de Londres.', 'cultura', 8.0, 2.0, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Londres', 'Mercado de productos frescos de Londres.', 'gastronomia', 0.0, 1.5, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Londres', 'Degustación gastronómica por Londres.', 'gastronomia', 15.0, 2.0, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Londres', 'Zona verde para pasear en Londres.', 'naturaleza', 0.0, 1.5, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Londres', 'Jardín con especies vegetales en Londres.', 'naturaleza', 6.0, 2.0, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Londres', 'Vistas panorámicas de Londres.', 'naturaleza', 0.0, 1.0, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Londres', 'Espectáculos y artes escénicas en Londres.', 'cultura', 20.0, 2.5, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Londres', 'Plaza central y punto de encuentro de Londres.', 'cultura', 0.0, 1.0, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Londres', 'Ambiente alternativo y de ocio en Londres.', 'ocio', 0.0, 2.0, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Londres', 'Arte contemporáneo en Londres.', 'cultura', 9.0, 1.5, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Londres', 'Fauna marina en Londres.', 'naturaleza', 18.0, 2.0, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Londres', 'Diversión para todas las edades en Londres.', 'ocio', 30.0, 4.0, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Londres', 'Productos artesanales locales de Londres.', 'gastronomia', 0.0, 1.5, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Londres', 'Recorrido junto al agua en Londres.', 'ocio', 0.0, 1.5, 7);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Londres', 'Mirador elevado sobre Londres.', 'ocio', 8.0, 1.0, 7);

-- Nueva York (8)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Nueva York', 'Paseo por el casco histórico de Nueva York.', 'cultura', 0.0, 1.5, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Nueva York (visita)', 'Principal templo histórico de Nueva York.', 'cultura', 5.0, 1.0, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Nueva York', 'Colección de arte de Nueva York.', 'cultura', 10.0, 2.0, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Nueva York', 'Historia y patrimonio de Nueva York.', 'cultura', 8.0, 2.0, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Nueva York', 'Mercado de productos frescos de Nueva York.', 'gastronomia', 0.0, 1.5, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Nueva York', 'Degustación gastronómica por Nueva York.', 'gastronomia', 15.0, 2.0, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Nueva York', 'Zona verde para pasear en Nueva York.', 'naturaleza', 0.0, 1.5, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Nueva York', 'Jardín con especies vegetales en Nueva York.', 'naturaleza', 6.0, 2.0, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Nueva York', 'Vistas panorámicas de Nueva York.', 'naturaleza', 0.0, 1.0, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro de Broadway', 'Espectáculos y artes escénicas en Nueva York.', 'cultura', 20.0, 2.5, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Central de Nueva York', 'Plaza central y punto de encuentro de Nueva York.', 'cultura', 0.0, 1.0, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Nueva York', 'Ambiente alternativo y de ocio en Nueva York.', 'ocio', 0.0, 2.0, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Nueva York', 'Arte contemporáneo en Nueva York.', 'cultura', 9.0, 1.5, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Nueva York', 'Fauna marina en Nueva York.', 'naturaleza', 18.0, 2.0, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Nueva York', 'Diversión para todas las edades en Nueva York.', 'ocio', 30.0, 4.0, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Nueva York', 'Productos artesanales locales de Nueva York.', 'gastronomia', 0.0, 1.5, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Nueva York', 'Recorrido junto al agua en Nueva York.', 'ocio', 0.0, 1.5, 8);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Nueva York', 'Mirador elevado sobre Nueva York.', 'ocio', 8.0, 1.0, 8);

-- Berlín (9)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Berlín', 'Paseo por el casco histórico de Berlín.', 'cultura', 0.0, 1.5, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Berlín (visita)', 'Principal templo histórico de Berlín.', 'cultura', 5.0, 1.0, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Berlín', 'Colección de arte de Berlín.', 'cultura', 10.0, 2.0, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Berlín', 'Historia y patrimonio de Berlín.', 'cultura', 8.0, 2.0, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Berlín', 'Mercado de productos frescos de Berlín.', 'gastronomia', 0.0, 1.5, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Berlín', 'Degustación gastronómica por Berlín.', 'gastronomia', 15.0, 2.0, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Berlín', 'Zona verde para pasear en Berlín.', 'naturaleza', 0.0, 1.5, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Berlín', 'Jardín con especies vegetales en Berlín.', 'naturaleza', 6.0, 2.0, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Berlín', 'Vistas panorámicas de Berlín.', 'naturaleza', 0.0, 1.0, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Berlín', 'Espectáculos y artes escénicas en Berlín.', 'cultura', 20.0, 2.5, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Berlín', 'Plaza central y punto de encuentro de Berlín.', 'cultura', 0.0, 1.0, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Berlín', 'Ambiente alternativo y de ocio en Berlín.', 'ocio', 0.0, 2.0, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Berlín', 'Arte contemporáneo en Berlín.', 'cultura', 9.0, 1.5, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Berlín', 'Fauna marina en Berlín.', 'naturaleza', 18.0, 2.0, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Berlín', 'Diversión para todas las edades en Berlín.', 'ocio', 30.0, 4.0, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Berlín', 'Productos artesanales locales de Berlín.', 'gastronomia', 0.0, 1.5, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Berlín', 'Recorrido junto al agua en Berlín.', 'ocio', 0.0, 1.5, 9);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Berlín', 'Mirador elevado sobre Berlín.', 'ocio', 8.0, 1.0, 9);

-- Praga (10)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Praga', 'Paseo por el casco histórico de Praga.', 'cultura', 0.0, 1.5, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Praga (visita)', 'Principal templo histórico de Praga.', 'cultura', 5.0, 1.0, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Praga', 'Colección de arte de Praga.', 'cultura', 10.0, 2.0, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Praga', 'Historia y patrimonio de Praga.', 'cultura', 8.0, 2.0, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Praga', 'Mercado de productos frescos de Praga.', 'gastronomia', 0.0, 1.5, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Praga', 'Degustación gastronómica por Praga.', 'gastronomia', 15.0, 2.0, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Praga', 'Zona verde para pasear en Praga.', 'naturaleza', 0.0, 1.5, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Praga', 'Jardín con especies vegetales en Praga.', 'naturaleza', 6.0, 2.0, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Praga', 'Vistas panorámicas de Praga.', 'naturaleza', 0.0, 1.0, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Praga', 'Espectáculos y artes escénicas en Praga.', 'cultura', 20.0, 2.5, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Praga', 'Plaza central y punto de encuentro de Praga.', 'cultura', 0.0, 1.0, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Praga', 'Ambiente alternativo y de ocio en Praga.', 'ocio', 0.0, 2.0, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Praga', 'Arte contemporáneo en Praga.', 'cultura', 9.0, 1.5, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Praga', 'Fauna marina en Praga.', 'naturaleza', 18.0, 2.0, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Praga', 'Diversión para todas las edades en Praga.', 'ocio', 30.0, 4.0, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Praga', 'Productos artesanales locales de Praga.', 'gastronomia', 0.0, 1.5, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Praga', 'Recorrido junto al agua en Praga.', 'ocio', 0.0, 1.5, 10);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Praga', 'Mirador elevado sobre Praga.', 'ocio', 8.0, 1.0, 10);

-- Viena (11)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Viena', 'Paseo por el casco histórico de Viena.', 'cultura', 0.0, 1.5, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Viena (visita)', 'Principal templo histórico de Viena.', 'cultura', 5.0, 1.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Viena', 'Colección de arte de Viena.', 'cultura', 10.0, 2.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Viena', 'Historia y patrimonio de Viena.', 'cultura', 8.0, 2.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Viena', 'Mercado de productos frescos de Viena.', 'gastronomia', 0.0, 1.5, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Viena', 'Degustación gastronómica por Viena.', 'gastronomia', 15.0, 2.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Viena', 'Zona verde para pasear en Viena.', 'naturaleza', 0.0, 1.5, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Viena', 'Jardín con especies vegetales en Viena.', 'naturaleza', 6.0, 2.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Viena', 'Vistas panorámicas de Viena.', 'naturaleza', 0.0, 1.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Viena', 'Espectáculos y artes escénicas en Viena.', 'cultura', 20.0, 2.5, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Viena', 'Plaza central y punto de encuentro de Viena.', 'cultura', 0.0, 1.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Viena', 'Ambiente alternativo y de ocio en Viena.', 'ocio', 0.0, 2.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Viena', 'Arte contemporáneo en Viena.', 'cultura', 9.0, 1.5, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Viena', 'Fauna marina en Viena.', 'naturaleza', 18.0, 2.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Viena', 'Diversión para todas las edades en Viena.', 'ocio', 30.0, 4.0, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Viena', 'Productos artesanales locales de Viena.', 'gastronomia', 0.0, 1.5, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Viena', 'Recorrido junto al agua en Viena.', 'ocio', 0.0, 1.5, 11);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Viena', 'Mirador elevado sobre Viena.', 'ocio', 8.0, 1.0, 11);

-- Atenas (12)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Atenas', 'Paseo por el casco histórico de Atenas.', 'cultura', 0.0, 1.5, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Templo Histórico de Atenas', 'Principal templo histórico de Atenas.', 'cultura', 5.0, 1.0, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Atenas', 'Colección de arte de Atenas.', 'cultura', 10.0, 2.0, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Atenas', 'Historia y patrimonio de Atenas.', 'cultura', 8.0, 2.0, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Atenas', 'Mercado de productos frescos de Atenas.', 'gastronomia', 0.0, 1.5, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Atenas', 'Degustación gastronómica por Atenas.', 'gastronomia', 15.0, 2.0, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Atenas', 'Zona verde para pasear en Atenas.', 'naturaleza', 0.0, 1.5, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Atenas', 'Jardín con especies vegetales en Atenas.', 'naturaleza', 6.0, 2.0, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Atenas', 'Vistas panorámicas de Atenas.', 'naturaleza', 0.0, 1.0, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Atenas', 'Espectáculos y artes escénicas en Atenas.', 'cultura', 20.0, 2.5, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Atenas', 'Plaza central y punto de encuentro de Atenas.', 'cultura', 0.0, 1.0, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Atenas', 'Ambiente alternativo y de ocio en Atenas.', 'ocio', 0.0, 2.0, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Atenas', 'Arte contemporáneo en Atenas.', 'cultura', 9.0, 1.5, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Atenas', 'Fauna marina en Atenas.', 'naturaleza', 18.0, 2.0, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Atenas', 'Diversión para todas las edades en Atenas.', 'ocio', 30.0, 4.0, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Atenas', 'Productos artesanales locales de Atenas.', 'gastronomia', 0.0, 1.5, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Atenas', 'Recorrido junto al agua en Atenas.', 'ocio', 0.0, 1.5, 12);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Atenas', 'Mirador elevado sobre Atenas.', 'ocio', 8.0, 1.0, 12);

-- Estambul (13)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Estambul', 'Paseo por el casco histórico de Estambul.', 'cultura', 0.0, 1.5, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mezquita Histórica de Estambul', 'Principal templo histórico de Estambul.', 'cultura', 5.0, 1.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Estambul', 'Colección de arte de Estambul.', 'cultura', 10.0, 2.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Estambul', 'Historia y patrimonio de Estambul.', 'cultura', 8.0, 2.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Estambul', 'Mercado de productos frescos de Estambul.', 'gastronomia', 0.0, 1.5, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Estambul', 'Degustación gastronómica por Estambul.', 'gastronomia', 15.0, 2.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Estambul', 'Zona verde para pasear en Estambul.', 'naturaleza', 0.0, 1.5, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Estambul', 'Jardín con especies vegetales en Estambul.', 'naturaleza', 6.0, 2.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Estambul', 'Vistas panorámicas de Estambul.', 'naturaleza', 0.0, 1.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Estambul', 'Espectáculos y artes escénicas en Estambul.', 'cultura', 20.0, 2.5, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Estambul', 'Plaza central y punto de encuentro de Estambul.', 'cultura', 0.0, 1.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Estambul', 'Ambiente alternativo y de ocio en Estambul.', 'ocio', 0.0, 2.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Estambul', 'Arte contemporáneo en Estambul.', 'cultura', 9.0, 1.5, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Estambul', 'Fauna marina en Estambul.', 'naturaleza', 18.0, 2.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Estambul', 'Diversión para todas las edades en Estambul.', 'ocio', 30.0, 4.0, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Estambul', 'Productos artesanales locales de Estambul.', 'gastronomia', 0.0, 1.5, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Estambul', 'Recorrido junto al agua en Estambul.', 'ocio', 0.0, 1.5, 13);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Estambul', 'Mirador elevado sobre Estambul.', 'ocio', 8.0, 1.0, 13);

-- El Cairo (14)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de El Cairo', 'Paseo por el casco histórico de El Cairo.', 'cultura', 0.0, 1.5, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mezquita Histórica de El Cairo', 'Principal templo histórico de El Cairo.', 'cultura', 5.0, 1.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de El Cairo', 'Colección de arte de El Cairo.', 'cultura', 10.0, 2.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de El Cairo', 'Historia y patrimonio de El Cairo.', 'cultura', 8.0, 2.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de El Cairo', 'Mercado de productos frescos de El Cairo.', 'gastronomia', 0.0, 1.5, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por El Cairo', 'Degustación gastronómica por El Cairo.', 'gastronomia', 15.0, 2.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de El Cairo', 'Zona verde para pasear en El Cairo.', 'naturaleza', 0.0, 1.5, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de El Cairo', 'Jardín con especies vegetales en El Cairo.', 'naturaleza', 6.0, 2.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de El Cairo', 'Vistas panorámicas de El Cairo.', 'naturaleza', 0.0, 1.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de El Cairo', 'Espectáculos y artes escénicas en El Cairo.', 'cultura', 20.0, 2.5, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de El Cairo', 'Plaza central y punto de encuentro de El Cairo.', 'cultura', 0.0, 1.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de El Cairo', 'Ambiente alternativo y de ocio en El Cairo.', 'ocio', 0.0, 2.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de El Cairo', 'Arte contemporáneo en El Cairo.', 'cultura', 9.0, 1.5, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de El Cairo', 'Fauna marina en El Cairo.', 'naturaleza', 18.0, 2.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de El Cairo', 'Diversión para todas las edades en El Cairo.', 'ocio', 30.0, 4.0, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de El Cairo', 'Productos artesanales locales de El Cairo.', 'gastronomia', 0.0, 1.5, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de El Cairo', 'Recorrido junto al agua en El Cairo.', 'ocio', 0.0, 1.5, 14);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de El Cairo', 'Mirador elevado sobre El Cairo.', 'ocio', 8.0, 1.0, 14);

-- Marrakech (15)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Marrakech', 'Paseo por el casco histórico de Marrakech.', 'cultura', 0.0, 1.5, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mezquita Histórica de Marrakech', 'Principal templo histórico de Marrakech.', 'cultura', 5.0, 1.0, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Marrakech', 'Colección de arte de Marrakech.', 'cultura', 10.0, 2.0, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Marrakech', 'Historia y patrimonio de Marrakech.', 'cultura', 8.0, 2.0, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Marrakech', 'Mercado de productos frescos de Marrakech.', 'gastronomia', 0.0, 1.5, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Marrakech', 'Degustación gastronómica por Marrakech.', 'gastronomia', 15.0, 2.0, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Marrakech', 'Zona verde para pasear en Marrakech.', 'naturaleza', 0.0, 1.5, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Marrakech', 'Jardín con especies vegetales en Marrakech.', 'naturaleza', 6.0, 2.0, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Marrakech', 'Vistas panorámicas de Marrakech.', 'naturaleza', 0.0, 1.0, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Marrakech', 'Espectáculos y artes escénicas en Marrakech.', 'cultura', 20.0, 2.5, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Marrakech', 'Plaza central y punto de encuentro de Marrakech.', 'cultura', 0.0, 1.0, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Marrakech', 'Ambiente alternativo y de ocio en Marrakech.', 'ocio', 0.0, 2.0, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Marrakech', 'Arte contemporáneo en Marrakech.', 'cultura', 9.0, 1.5, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Marrakech', 'Fauna marina en Marrakech.', 'naturaleza', 18.0, 2.0, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Marrakech', 'Diversión para todas las edades en Marrakech.', 'ocio', 30.0, 4.0, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Marrakech', 'Productos artesanales locales de Marrakech.', 'gastronomia', 0.0, 1.5, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Marrakech', 'Recorrido junto al agua en Marrakech.', 'ocio', 0.0, 1.5, 15);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Marrakech', 'Mirador elevado sobre Marrakech.', 'ocio', 8.0, 1.0, 15);

-- Dubái (16)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Dubái', 'Paseo por el casco histórico de Dubái.', 'cultura', 0.0, 1.5, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mezquita Histórica de Dubái', 'Principal templo histórico de Dubái.', 'cultura', 5.0, 1.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Dubái', 'Colección de arte de Dubái.', 'cultura', 10.0, 2.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Dubái', 'Historia y patrimonio de Dubái.', 'cultura', 8.0, 2.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Dubái', 'Mercado de productos frescos de Dubái.', 'gastronomia', 0.0, 1.5, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Dubái', 'Degustación gastronómica por Dubái.', 'gastronomia', 15.0, 2.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Dubái', 'Zona verde para pasear en Dubái.', 'naturaleza', 0.0, 1.5, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Dubái', 'Jardín con especies vegetales en Dubái.', 'naturaleza', 6.0, 2.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Dubái', 'Vistas panorámicas de Dubái.', 'naturaleza', 0.0, 1.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Dubái', 'Espectáculos y artes escénicas en Dubái.', 'cultura', 20.0, 2.5, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Dubái', 'Plaza central y punto de encuentro de Dubái.', 'cultura', 0.0, 1.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Dubái', 'Ambiente alternativo y de ocio en Dubái.', 'ocio', 0.0, 2.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Dubái', 'Arte contemporáneo en Dubái.', 'cultura', 9.0, 1.5, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Dubái', 'Fauna marina en Dubái.', 'naturaleza', 18.0, 2.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Dubái', 'Diversión para todas las edades en Dubái.', 'ocio', 30.0, 4.0, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Dubái', 'Productos artesanales locales de Dubái.', 'gastronomia', 0.0, 1.5, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Marítimo de Dubái', 'Recorrido junto al agua en Dubái.', 'ocio', 0.0, 1.5, 16);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Dubái', 'Mirador elevado sobre Dubái.', 'ocio', 8.0, 1.0, 16);

-- Bangkok (17)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Bangkok', 'Paseo por el casco histórico de Bangkok.', 'cultura', 0.0, 1.5, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Templo Histórico de Bangkok', 'Principal templo histórico de Bangkok.', 'cultura', 5.0, 1.0, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Bangkok', 'Colección de arte de Bangkok.', 'cultura', 10.0, 2.0, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Bangkok', 'Historia y patrimonio de Bangkok.', 'cultura', 8.0, 2.0, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Bangkok', 'Mercado de productos frescos de Bangkok.', 'gastronomia', 0.0, 1.5, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Bangkok', 'Degustación gastronómica por Bangkok.', 'gastronomia', 15.0, 2.0, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Bangkok', 'Zona verde para pasear en Bangkok.', 'naturaleza', 0.0, 1.5, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Bangkok', 'Jardín con especies vegetales en Bangkok.', 'naturaleza', 6.0, 2.0, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Bangkok', 'Vistas panorámicas de Bangkok.', 'naturaleza', 0.0, 1.0, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Bangkok', 'Espectáculos y artes escénicas en Bangkok.', 'cultura', 20.0, 2.5, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Bangkok', 'Plaza central y punto de encuentro de Bangkok.', 'cultura', 0.0, 1.0, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Bangkok', 'Ambiente alternativo y de ocio en Bangkok.', 'ocio', 0.0, 2.0, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Bangkok', 'Arte contemporáneo en Bangkok.', 'cultura', 9.0, 1.5, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Bangkok', 'Fauna marina en Bangkok.', 'naturaleza', 18.0, 2.0, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Bangkok', 'Diversión para todas las edades en Bangkok.', 'ocio', 30.0, 4.0, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Bangkok', 'Productos artesanales locales de Bangkok.', 'gastronomia', 0.0, 1.5, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Bangkok', 'Recorrido junto al agua en Bangkok.', 'ocio', 0.0, 1.5, 17);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Bangkok', 'Mirador elevado sobre Bangkok.', 'ocio', 8.0, 1.0, 17);

-- Sídney (18)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Sídney', 'Paseo por el casco histórico de Sídney.', 'cultura', 0.0, 1.5, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Sídney (visita)', 'Principal templo histórico de Sídney.', 'cultura', 5.0, 1.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Sídney', 'Colección de arte de Sídney.', 'cultura', 10.0, 2.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Sídney', 'Historia y patrimonio de Sídney.', 'cultura', 8.0, 2.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Sídney', 'Mercado de productos frescos de Sídney.', 'gastronomia', 0.0, 1.5, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Sídney', 'Degustación gastronómica por Sídney.', 'gastronomia', 15.0, 2.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Sídney', 'Zona verde para pasear en Sídney.', 'naturaleza', 0.0, 1.5, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Sídney', 'Jardín con especies vegetales en Sídney.', 'naturaleza', 6.0, 2.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Sídney', 'Vistas panorámicas de Sídney.', 'naturaleza', 0.0, 1.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Sídney', 'Espectáculos y artes escénicas en Sídney.', 'cultura', 20.0, 2.5, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Sídney', 'Plaza central y punto de encuentro de Sídney.', 'cultura', 0.0, 1.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Sídney', 'Ambiente alternativo y de ocio en Sídney.', 'ocio', 0.0, 2.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Sídney', 'Arte contemporáneo en Sídney.', 'cultura', 9.0, 1.5, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Sídney (zona)', 'Fauna marina en Sídney.', 'naturaleza', 18.0, 2.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Sídney', 'Diversión para todas las edades en Sídney.', 'ocio', 30.0, 4.0, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Sídney', 'Productos artesanales locales de Sídney.', 'gastronomia', 0.0, 1.5, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Marítimo de Sídney', 'Recorrido junto al agua en Sídney.', 'ocio', 0.0, 1.5, 18);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Sídney', 'Mirador elevado sobre Sídney.', 'ocio', 8.0, 1.0, 18);

-- Río de Janeiro (19)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Río de Janeiro', 'Paseo por el casco histórico de Río de Janeiro.', 'cultura', 0.0, 1.5, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Río de Janeiro (visita)', 'Principal templo histórico de Río de Janeiro.', 'cultura', 5.0, 1.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Río de Janeiro', 'Colección de arte de Río de Janeiro.', 'cultura', 10.0, 2.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Río de Janeiro', 'Historia y patrimonio de Río de Janeiro.', 'cultura', 8.0, 2.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Río de Janeiro', 'Mercado de productos frescos de Río de Janeiro.', 'gastronomia', 0.0, 1.5, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Río de Janeiro', 'Degustación gastronómica por Río de Janeiro.', 'gastronomia', 15.0, 2.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Río de Janeiro', 'Zona verde para pasear en Río de Janeiro.', 'naturaleza', 0.0, 1.5, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Río de Janeiro', 'Jardín con especies vegetales en Río de Janeiro.', 'naturaleza', 6.0, 2.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Río de Janeiro', 'Vistas panorámicas de Río de Janeiro.', 'naturaleza', 0.0, 1.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Río de Janeiro', 'Espectáculos y artes escénicas en Río de Janeiro.', 'cultura', 20.0, 2.5, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Río de Janeiro', 'Plaza central y punto de encuentro de Río de Janeiro.', 'cultura', 0.0, 1.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Río de Janeiro', 'Ambiente alternativo y de ocio en Río de Janeiro.', 'ocio', 0.0, 2.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Río de Janeiro', 'Arte contemporáneo en Río de Janeiro.', 'cultura', 9.0, 1.5, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Río de Janeiro', 'Fauna marina en Río de Janeiro.', 'naturaleza', 18.0, 2.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Río de Janeiro', 'Diversión para todas las edades en Río de Janeiro.', 'ocio', 30.0, 4.0, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Río de Janeiro', 'Productos artesanales locales de Río de Janeiro.', 'gastronomia', 0.0, 1.5, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Marítimo de Río de Janeiro', 'Recorrido junto al agua en Río de Janeiro.', 'ocio', 0.0, 1.5, 19);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Río de Janeiro', 'Mirador elevado sobre Río de Janeiro.', 'ocio', 8.0, 1.0, 19);

-- Buenos Aires (20)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Buenos Aires', 'Paseo por el casco histórico de Buenos Aires.', 'cultura', 0.0, 1.5, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Buenos Aires (visita)', 'Principal templo histórico de Buenos Aires.', 'cultura', 5.0, 1.0, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Buenos Aires', 'Colección de arte de Buenos Aires.', 'cultura', 10.0, 2.0, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Buenos Aires', 'Historia y patrimonio de Buenos Aires.', 'cultura', 8.0, 2.0, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Buenos Aires', 'Mercado de productos frescos de Buenos Aires.', 'gastronomia', 0.0, 1.5, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Buenos Aires', 'Degustación gastronómica por Buenos Aires.', 'gastronomia', 15.0, 2.0, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Buenos Aires', 'Zona verde para pasear en Buenos Aires.', 'naturaleza', 0.0, 1.5, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Buenos Aires', 'Jardín con especies vegetales en Buenos Aires.', 'naturaleza', 6.0, 2.0, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Buenos Aires', 'Vistas panorámicas de Buenos Aires.', 'naturaleza', 0.0, 1.0, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Buenos Aires', 'Espectáculos y artes escénicas en Buenos Aires.', 'cultura', 20.0, 2.5, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Buenos Aires', 'Plaza central y punto de encuentro de Buenos Aires.', 'cultura', 0.0, 1.0, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Buenos Aires', 'Ambiente alternativo y de ocio en Buenos Aires.', 'ocio', 0.0, 2.0, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Buenos Aires', 'Arte contemporáneo en Buenos Aires.', 'cultura', 9.0, 1.5, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Buenos Aires', 'Fauna marina en Buenos Aires.', 'naturaleza', 18.0, 2.0, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Buenos Aires', 'Diversión para todas las edades en Buenos Aires.', 'ocio', 30.0, 4.0, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Buenos Aires', 'Productos artesanales locales de Buenos Aires.', 'gastronomia', 0.0, 1.5, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Buenos Aires', 'Recorrido junto al agua en Buenos Aires.', 'ocio', 0.0, 1.5, 20);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Buenos Aires', 'Mirador elevado sobre Buenos Aires.', 'ocio', 8.0, 1.0, 20);

-- San Francisco (21)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de San Francisco', 'Paseo por el casco histórico de San Francisco.', 'cultura', 0.0, 1.5, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de San Francisco (visita)', 'Principal templo histórico de San Francisco.', 'cultura', 5.0, 1.0, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de San Francisco', 'Colección de arte de San Francisco.', 'cultura', 10.0, 2.0, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de San Francisco', 'Historia y patrimonio de San Francisco.', 'cultura', 8.0, 2.0, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de San Francisco', 'Mercado de productos frescos de San Francisco.', 'gastronomia', 0.0, 1.5, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por San Francisco', 'Degustación gastronómica por San Francisco.', 'gastronomia', 15.0, 2.0, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de San Francisco', 'Zona verde para pasear en San Francisco.', 'naturaleza', 0.0, 1.5, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de San Francisco', 'Jardín con especies vegetales en San Francisco.', 'naturaleza', 6.0, 2.0, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de San Francisco', 'Vistas panorámicas de San Francisco.', 'naturaleza', 0.0, 1.0, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de San Francisco', 'Espectáculos y artes escénicas en San Francisco.', 'cultura', 20.0, 2.5, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de San Francisco', 'Plaza central y punto de encuentro de San Francisco.', 'cultura', 0.0, 1.0, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de San Francisco', 'Ambiente alternativo y de ocio en San Francisco.', 'ocio', 0.0, 2.0, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de San Francisco', 'Arte contemporáneo en San Francisco.', 'cultura', 9.0, 1.5, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de San Francisco', 'Fauna marina en San Francisco.', 'naturaleza', 18.0, 2.0, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de San Francisco', 'Diversión para todas las edades en San Francisco.', 'ocio', 30.0, 4.0, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de San Francisco', 'Productos artesanales locales de San Francisco.', 'gastronomia', 0.0, 1.5, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Marítimo de San Francisco', 'Recorrido junto al agua en San Francisco.', 'ocio', 0.0, 1.5, 21);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de San Francisco', 'Mirador elevado sobre San Francisco.', 'ocio', 8.0, 1.0, 21);

-- Venecia (22)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Venecia', 'Paseo por el casco histórico de Venecia.', 'cultura', 0.0, 1.5, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Venecia (visita)', 'Principal templo histórico de Venecia.', 'cultura', 5.0, 1.0, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Venecia', 'Colección de arte de Venecia.', 'cultura', 10.0, 2.0, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Venecia', 'Historia y patrimonio de Venecia.', 'cultura', 8.0, 2.0, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Venecia', 'Mercado de productos frescos de Venecia.', 'gastronomia', 0.0, 1.5, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Venecia', 'Degustación gastronómica por Venecia.', 'gastronomia', 15.0, 2.0, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Venecia', 'Zona verde para pasear en Venecia.', 'naturaleza', 0.0, 1.5, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Venecia', 'Jardín con especies vegetales en Venecia.', 'naturaleza', 6.0, 2.0, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Venecia', 'Vistas panorámicas de Venecia.', 'naturaleza', 0.0, 1.0, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Venecia', 'Espectáculos y artes escénicas en Venecia.', 'cultura', 20.0, 2.5, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Venecia', 'Plaza central y punto de encuentro de Venecia.', 'cultura', 0.0, 1.0, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Venecia', 'Ambiente alternativo y de ocio en Venecia.', 'ocio', 0.0, 2.0, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Venecia', 'Arte contemporáneo en Venecia.', 'cultura', 9.0, 1.5, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Venecia', 'Fauna marina en Venecia.', 'naturaleza', 18.0, 2.0, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Venecia', 'Diversión para todas las edades en Venecia.', 'ocio', 30.0, 4.0, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Venecia', 'Productos artesanales locales de Venecia.', 'gastronomia', 0.0, 1.5, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo en Barco por Venecia', 'Recorrido junto al agua en Venecia.', 'ocio', 0.0, 1.5, 22);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Venecia', 'Mirador elevado sobre Venecia.', 'ocio', 8.0, 1.0, 22);

-- Florencia (23)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Florencia', 'Paseo por el casco histórico de Florencia.', 'cultura', 0.0, 1.5, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Florencia (visita)', 'Principal templo histórico de Florencia.', 'cultura', 5.0, 1.0, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Florencia', 'Colección de arte de Florencia.', 'cultura', 10.0, 2.0, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Florencia', 'Historia y patrimonio de Florencia.', 'cultura', 8.0, 2.0, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Florencia', 'Mercado de productos frescos de Florencia.', 'gastronomia', 0.0, 1.5, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Florencia', 'Degustación gastronómica por Florencia.', 'gastronomia', 15.0, 2.0, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Florencia', 'Zona verde para pasear en Florencia.', 'naturaleza', 0.0, 1.5, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Florencia', 'Jardín con especies vegetales en Florencia.', 'naturaleza', 6.0, 2.0, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Florencia', 'Vistas panorámicas de Florencia.', 'naturaleza', 0.0, 1.0, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Florencia', 'Espectáculos y artes escénicas en Florencia.', 'cultura', 20.0, 2.5, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Florencia', 'Plaza central y punto de encuentro de Florencia.', 'cultura', 0.0, 1.0, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Florencia', 'Ambiente alternativo y de ocio en Florencia.', 'ocio', 0.0, 2.0, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Florencia', 'Arte contemporáneo en Florencia.', 'cultura', 9.0, 1.5, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Florencia', 'Fauna marina en Florencia.', 'naturaleza', 18.0, 2.0, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Florencia', 'Diversión para todas las edades en Florencia.', 'ocio', 30.0, 4.0, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Florencia', 'Productos artesanales locales de Florencia.', 'gastronomia', 0.0, 1.5, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Florencia', 'Recorrido junto al agua en Florencia.', 'ocio', 0.0, 1.5, 23);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Florencia', 'Mirador elevado sobre Florencia.', 'ocio', 8.0, 1.0, 23);

-- Edimburgo (24)
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Casco Histórico de Edimburgo', 'Paseo por el casco histórico de Edimburgo.', 'cultura', 0.0, 1.5, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Catedral de Edimburgo (visita)', 'Principal templo histórico de Edimburgo.', 'cultura', 5.0, 1.0, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Arte de Edimburgo', 'Colección de arte de Edimburgo.', 'cultura', 10.0, 2.0, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Museo de Historia de Edimburgo', 'Historia y patrimonio de Edimburgo.', 'cultura', 8.0, 2.0, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercado Central de Edimburgo', 'Mercado de productos frescos de Edimburgo.', 'gastronomia', 0.0, 1.5, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Ruta Gastronómica por Edimburgo', 'Degustación gastronómica por Edimburgo.', 'gastronomia', 15.0, 2.0, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque Municipal de Edimburgo', 'Zona verde para pasear en Edimburgo.', 'naturaleza', 0.0, 1.5, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Jardín Botánico de Edimburgo (zona)', 'Jardín con especies vegetales en Edimburgo.', 'naturaleza', 6.0, 2.0, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mirador de Edimburgo', 'Vistas panorámicas de Edimburgo.', 'naturaleza', 0.0, 1.0, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Teatro Principal de Edimburgo', 'Espectáculos y artes escénicas en Edimburgo.', 'cultura', 20.0, 2.5, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Plaza Mayor de Edimburgo', 'Plaza central y punto de encuentro de Edimburgo.', 'cultura', 0.0, 1.0, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Barrio Bohemio de Edimburgo', 'Ambiente alternativo y de ocio en Edimburgo.', 'ocio', 0.0, 2.0, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Galería de Arte Moderno de Edimburgo', 'Arte contemporáneo en Edimburgo.', 'cultura', 9.0, 1.5, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Acuario de Edimburgo', 'Fauna marina en Edimburgo.', 'naturaleza', 18.0, 2.0, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Parque de Atracciones de Edimburgo', 'Diversión para todas las edades en Edimburgo.', 'ocio', 30.0, 4.0, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Mercadillo de Artesanía de Edimburgo', 'Productos artesanales locales de Edimburgo.', 'gastronomia', 0.0, 1.5, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Paseo Fluvial de Edimburgo', 'Recorrido junto al agua en Edimburgo.', 'ocio', 0.0, 1.5, 24);
INSERT INTO LUGARES_TURISTICOS (nombre, descripcion, tipo, precio, duracion_visita, destino_id) VALUES ('Torre Panorámica de Edimburgo', 'Mirador elevado sobre Edimburgo.', 'ocio', 8.0, 1.0, 24);
