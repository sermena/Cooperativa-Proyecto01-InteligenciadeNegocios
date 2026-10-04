-- Datos sintéticos de ubicacion

INSERT INTO ubicacion (id_ubicacion, provincia, canton, id_region) VALUES
(1, 'San José', 'San José', 1),
(2, 'San José', 'Desamparados', 1),
(3, 'San José', 'Goicoechea', 1),
(4, 'San José', 'Montes de Oca', 1),
(5, 'San José', 'Pérez Zeledón', 4),
(6, 'Alajuela', 'Alajuela', 1),
(7, 'Alajuela', 'Grecia', 1),
(8, 'Alajuela', 'San Ramón', 1),
(9, 'Alajuela', 'San Carlos', 6),
(10, 'Alajuela', 'Upala', 6),
(11, 'Cartago', 'Cartago', 1),
(12, 'Cartago', 'La Unión', 1),
(13, 'Cartago', 'Turrialba', 1),
(14, 'Heredia', 'Heredia', 1),
(15, 'Heredia', 'Santo Domingo', 1),
(16, 'Heredia', 'Barva', 1),
(17, 'Guanacaste', 'Liberia', 2),
(18, 'Guanacaste', 'Nicoya', 2),
(19, 'Guanacaste', 'Santa Cruz', 2),
(20, 'Puntarenas', 'Puntarenas', 3),
(21, 'Puntarenas', 'Esparza', 3),
(22, 'Puntarenas', 'Corredores', 4),
(23, 'Limón', 'Limón', 5),
(24, 'Limón', 'Pococí', 5),
(25, 'Limón', 'Siquirres', 5);

SELECT setval(pg_get_serial_sequence('ubicacion', 'id_ubicacion'), (SELECT MAX(id_ubicacion) FROM ubicacion));
