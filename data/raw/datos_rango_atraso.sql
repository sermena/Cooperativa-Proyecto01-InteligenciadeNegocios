-- Datos sintéticos de rango_atraso

INSERT INTO rango_atraso (id_rango, codigo_rango, nombre_rango, dias_minimo, dias_maximo) VALUES
(1, 'R0', 'Al día', 0, 0),
(2, 'R1', '1 a 30 días', 1, 30),
(3, 'R2', '31 a 60 días', 31, 60),
(4, 'R3', '61 a 90 días', 61, 90),
(5, 'R4', '91 a 180 días', 91, 180),
(6, 'R5', 'Más de 180 días', 181, NULL);

SELECT setval(pg_get_serial_sequence('rango_atraso', 'id_rango'), (SELECT MAX(id_rango) FROM rango_atraso));
