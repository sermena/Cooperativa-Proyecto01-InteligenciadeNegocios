-- Datos sintéticos de tipo_credito

INSERT INTO tipo_credito (id_tipo_credito, codigo_tipo, nombre_tipo, tipo_garantia, descripcion) VALUES
(1, 'PER', 'Personal', 'FIDUCIARIA', 'Créditos de consumo respaldados por fiador o salario'),
(2, 'HIP', 'Hipotecario', 'HIPOTECARIA', 'Créditos para vivienda respaldados por hipoteca'),
(3, 'COM', 'Comercial', 'MIXTA', 'Créditos para actividades productivas de pymes'),
(4, 'PRE', 'Prendario', 'PRENDARIA', 'Créditos respaldados por prenda sobre vehículo');

SELECT setval(pg_get_serial_sequence('tipo_credito', 'id_tipo_credito'), (SELECT MAX(id_tipo_credito) FROM tipo_credito));
