-- =====================================================================
-- Proyecto 1 BI: Script maestro del Data Warehouse
-- Crea el esquema dw, las dimensiones, los hechos y puebla el calendario
-- =====================================================================

\set ON_ERROR_STOP on
\encoding UTF8

\echo 'Conectando a la base de datos...'
\c proyecto_1_bi

-- Esquema
\echo 'Creando esquema dw...'
CREATE SCHEMA IF NOT EXISTS dw;
SET search_path TO dw;

-- Dimensiones
\echo 'Creando dimensiones...'
\ir 01_dimensiones.sql

-- Hechos
\echo 'Creando tablas de hechos...'
\ir 02_hechos.sql

-- Poblar dimensión tiempo
\echo 'Poblando dimensión tiempo...'
\ir 03_poblar_dim_tiempo.sql

-- Resumen
\echo 'Filas por tabla:'
SELECT 'dim_tiempo' AS tabla, COUNT(*) AS filas FROM dim_tiempo
UNION ALL SELECT 'dim_cliente', COUNT(*) FROM dim_cliente
UNION ALL SELECT 'dim_producto_credito', COUNT(*) FROM dim_producto_credito
UNION ALL SELECT 'dim_agencia', COUNT(*) FROM dim_agencia
UNION ALL SELECT 'dim_canal_pago', COUNT(*) FROM dim_canal_pago
UNION ALL SELECT 'dim_rango_atraso', COUNT(*) FROM dim_rango_atraso
UNION ALL SELECT 'dim_concepto_ingreso', COUNT(*) FROM dim_concepto_ingreso
UNION ALL SELECT 'fact_credito', COUNT(*) FROM fact_credito
UNION ALL SELECT 'fact_pago', COUNT(*) FROM fact_pago
UNION ALL SELECT 'fact_morosidad', COUNT(*) FROM fact_morosidad
UNION ALL SELECT 'fact_ingreso', COUNT(*) FROM fact_ingreso;

\echo 'Data Warehouse listo (estructura + dimensión tiempo poblada).'
