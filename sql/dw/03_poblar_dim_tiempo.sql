-- =====================================================================
-- Proyecto 1 BI: Poblar Dimensión Tiempo
-- Calendario día a día desde 2023-01-01 hasta 2026-12-31: cubre con
-- margen el rango real de datos del OLTP (2023-01-02 a 2026-08-31).
-- No depende del ETL; se genera directamente por calendario.
-- =====================================================================

INSERT INTO dim_tiempo (
    fecha, anio, semestre, trimestre, mes, nombre_mes,
    dia, dia_semana, nombre_dia_semana, es_fin_de_semana
)
SELECT
    gs::date AS fecha,
    EXTRACT(YEAR FROM gs)::SMALLINT AS anio,
    CASE WHEN EXTRACT(MONTH FROM gs) <= 6 THEN 1 ELSE 2 END::SMALLINT AS semestre,
    CEIL(EXTRACT(MONTH FROM gs) / 3.0)::SMALLINT AS trimestre,
    EXTRACT(MONTH FROM gs)::SMALLINT AS mes,
    CASE EXTRACT(MONTH FROM gs)
        WHEN 1 THEN 'Enero' WHEN 2 THEN 'Febrero' WHEN 3 THEN 'Marzo'
        WHEN 4 THEN 'Abril' WHEN 5 THEN 'Mayo' WHEN 6 THEN 'Junio'
        WHEN 7 THEN 'Julio' WHEN 8 THEN 'Agosto' WHEN 9 THEN 'Septiembre'
        WHEN 10 THEN 'Octubre' WHEN 11 THEN 'Noviembre' WHEN 12 THEN 'Diciembre'
    END AS nombre_mes,
    EXTRACT(DAY FROM gs)::SMALLINT AS dia,
    EXTRACT(ISODOW FROM gs)::SMALLINT AS dia_semana,
    CASE EXTRACT(ISODOW FROM gs)
        WHEN 1 THEN 'Lunes' WHEN 2 THEN 'Martes' WHEN 3 THEN 'Miércoles'
        WHEN 4 THEN 'Jueves' WHEN 5 THEN 'Viernes' WHEN 6 THEN 'Sábado'
        WHEN 7 THEN 'Domingo'
    END AS nombre_dia_semana,
    EXTRACT(ISODOW FROM gs) IN (6, 7) AS es_fin_de_semana
FROM generate_series(
    '2023-01-01'::date, '2026-12-31'::date, interval '1 day'
) AS gs;
