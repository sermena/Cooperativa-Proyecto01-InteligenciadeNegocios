-- Datos sintéticos de segmento

INSERT INTO segmento (id_segmento, codigo_segmento, nombre_segmento, descripcion) VALUES
(1, 'APU', 'Asalariado sector público', 'Personas con salario de una institución pública'),
(2, 'APR', 'Asalariado sector privado', 'Personas con salario de una empresa privada'),
(3, 'IND', 'Independiente', 'Personas que trabajan por cuenta propia'),
(4, 'PEN', 'Pensionado', 'Personas que reciben una pensión'),
(5, 'PYM', 'Pyme / Empresarial', 'Asociados con una pequeña o mediana empresa');

SELECT setval(pg_get_serial_sequence('segmento', 'id_segmento'), (SELECT MAX(id_segmento) FROM segmento));
