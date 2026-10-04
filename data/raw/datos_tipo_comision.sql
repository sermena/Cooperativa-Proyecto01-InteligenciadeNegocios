-- Datos sintéticos de tipo_comision

INSERT INTO tipo_comision (id_tipo_comision, codigo_comision, nombre_comision, descripcion) VALUES
(1, 'FOR', 'Formalización', 'Porcentaje del monto aprobado, cobrado al desembolsar'),
(2, 'AVA', 'Avalúo de garantía', 'Monto fijo por valorar la garantía hipotecaria o prendaria'),
(3, 'GCO', 'Gestión de cobro', 'Monto fijo por cada cuota pagada con más de 30 días de atraso');

SELECT setval(pg_get_serial_sequence('tipo_comision', 'id_tipo_comision'), (SELECT MAX(id_tipo_comision) FROM tipo_comision));
