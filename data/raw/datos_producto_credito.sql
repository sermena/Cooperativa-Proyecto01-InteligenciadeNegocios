-- Datos sintéticos de producto_credito

INSERT INTO producto_credito (id_producto, codigo_producto, nombre_producto, id_tipo_credito, moneda, monto_minimo, monto_maximo, plazo_minimo_meses, plazo_maximo_meses, tasa_interes_min_anual, tasa_interes_max_anual, tasa_moratoria_anual, pct_comision_formalizacion, fecha_lanzamiento, activo) VALUES
(1, 'PER-CON', 'Personal de consumo', 1, 'CRC', 500000.00, 10000000.00, 12, 72, 15.50, 19.50, 3.00, 2.00, '2015-03-01', TRUE),
(2, 'PER-EDU', 'Personal para educación', 1, 'CRC', 300000.00, 8000000.00, 12, 60, 12.00, 15.00, 3.00, 1.00, '2017-01-15', TRUE),
(3, 'PER-CDE', 'Consolidación de deudas', 1, 'CRC', 1000000.00, 20000000.00, 24, 96, 14.00, 17.50, 3.00, 2.00, '2019-06-01', TRUE),
(4, 'HIP-VIV', 'Hipotecario vivienda', 2, 'CRC', 20000000.00, 120000000.00, 120, 360, 8.50, 10.75, 2.00, 1.50, '2014-01-10', TRUE),
(5, 'HIP-CON', 'Hipotecario construcción', 2, 'CRC', 15000000.00, 90000000.00, 120, 300, 9.00, 11.25, 2.00, 1.50, '2016-08-01', TRUE),
(6, 'HIP-LOT', 'Hipotecario compra de lote', 2, 'CRC', 8000000.00, 45000000.00, 60, 180, 9.75, 12.00, 2.00, 1.50, '2018-02-01', TRUE),
(7, 'COM-CTR', 'Comercial capital de trabajo', 3, 'CRC', 3000000.00, 40000000.00, 12, 60, 12.50, 16.00, 3.00, 2.50, '2016-04-01', TRUE),
(8, 'COM-INV', 'Comercial inversión pyme', 3, 'CRC', 10000000.00, 80000000.00, 36, 120, 11.50, 14.50, 3.00, 2.50, '2018-09-01', TRUE),
(9, 'PRE-VNU', 'Prendario vehículo nuevo', 4, 'CRC', 6000000.00, 30000000.00, 36, 96, 10.00, 12.50, 2.50, 1.75, '2015-05-01', TRUE),
(10, 'PRE-VUS', 'Prendario vehículo usado', 4, 'CRC', 3000000.00, 18000000.00, 24, 84, 12.00, 14.75, 2.50, 1.75, '2015-05-01', TRUE);

SELECT setval(pg_get_serial_sequence('producto_credito', 'id_producto'), (SELECT MAX(id_producto) FROM producto_credito));
