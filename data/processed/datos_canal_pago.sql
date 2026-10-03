-- Datos sintéticos de canal_pago

INSERT INTO canal_pago (id_canal, codigo_canal, nombre_canal, es_digital) VALUES
(1, 'VEN', 'Ventanilla en agencia', FALSE),
(2, 'PLA', 'Deducción de planilla', FALSE),
(3, 'SIN', 'SINPE Móvil', TRUE),
(4, 'BEL', 'Banca en línea', TRUE),
(5, 'APP', 'Aplicación móvil', TRUE),
(6, 'DEB', 'Débito automático', TRUE);

SELECT setval(pg_get_serial_sequence('canal_pago', 'id_canal'), (SELECT MAX(id_canal) FROM canal_pago));
