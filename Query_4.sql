# Objetivo
# cálculo de engagement_time por página en segundos

SELECT
(SELECT value.string_value FROM unnest (event_params) WHERE key= "page_location") as page_location,
AVG((SELECT value.int_value FROM UNNEST(event_params) WHERE key="engagement_time_msec"))/1000 AS avg_engagement_time_sec,
FROM ``
where
_table_suffix between '' AND '' # Cambiamos fechas
GROUP BY 1