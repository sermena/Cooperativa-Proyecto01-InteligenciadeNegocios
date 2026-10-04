-- Datos sintéticos de region

INSERT INTO region (id_region, codigo_region, nombre_region) VALUES
(1, 'CEN', 'Central'),
(2, 'CHO', 'Chorotega'),
(3, 'PCE', 'Pacífico Central'),
(4, 'BRU', 'Brunca'),
(5, 'HCA', 'Huetar Caribe'),
(6, 'HNO', 'Huetar Norte');

SELECT setval(pg_get_serial_sequence('region', 'id_region'), (SELECT MAX(id_region) FROM region));
