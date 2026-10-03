-- Datos sintéticos de agencia

INSERT INTO agencia (id_agencia, codigo_agencia, nombre_agencia, id_ubicacion, fecha_apertura, activa) VALUES
(1, 'AG-001', 'Agencia Central San José', 1, '2005-03-01', TRUE),
(2, 'AG-002', 'Agencia Desamparados', 2, '2009-07-01', TRUE),
(3, 'AG-003', 'Agencia Pérez Zeledón', 5, '2012-02-01', TRUE),
(4, 'AG-004', 'Agencia Alajuela Centro', 6, '2007-05-01', TRUE),
(5, 'AG-005', 'Agencia San Carlos', 9, '2011-09-01', TRUE),
(6, 'AG-006', 'Agencia Cartago Centro', 11, '2006-01-15', TRUE),
(7, 'AG-007', 'Agencia Turrialba', 13, '2014-06-01', TRUE),
(8, 'AG-008', 'Agencia Heredia Centro', 14, '2008-04-01', TRUE),
(9, 'AG-009', 'Agencia Liberia', 17, '2010-03-01', TRUE),
(10, 'AG-010', 'Agencia Nicoya', 18, '2016-11-01', TRUE),
(11, 'AG-011', 'Agencia Puntarenas Centro', 20, '2009-10-01', TRUE),
(12, 'AG-012', 'Agencia Limón Centro', 23, '2011-02-01', TRUE);

SELECT setval(pg_get_serial_sequence('agencia', 'id_agencia'), (SELECT MAX(id_agencia) FROM agencia));
