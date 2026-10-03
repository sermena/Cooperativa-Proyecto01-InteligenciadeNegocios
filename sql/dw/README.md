# sql/dw

DDL del Data Warehouse: dimensiones (dim_*) y tablas de hechos (fact_*), esquema dw dentro de la base proyecto_1_bi.

Scripts, en orden de ejecución:

- 01_dimensiones.sql: crea las 7 dimensiones conformadas (dim_tiempo, dim_cliente, dim_producto_credito, dim_agencia, dim_canal_pago, dim_rango_atraso, dim_concepto_ingreso)
- 02_hechos.sql: crea las 4 tablas de hechos (fact_credito, fact_pago, fact_morosidad, fact_ingreso) más sus índices
- 03_poblar_dim_tiempo.sql: puebla dim_tiempo por calendario (2023-01-01 a 2026-12-31), no depende del ETL
- script_maestro.sql: ejecuta los tres anteriores en orden sobre proyecto_1_bi

Modelo: constelación de hechos (4 tablas de hechos, no una sola, porque no comparten granularidad). Dimensiones desnormalizadas en esquema estrella, sin tablas satélite de ubicación o tipo.

Para ejecutar, parado en la raíz del repo:

psql -d postgres -f sql/dw/script_maestro.sql

Requiere haber corrido antes sql/oltp/script_maestro.sql (Fase 2), ya que el ETL de Fase 4 leerá de ese esquema.

Después de correrlo, todas las tablas quedan vacías salvo dim_tiempo. Se llenan en Fase 4 (ETL con Apache Hop) desde el esquema coopebi.
