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
