# Objetivo
# extraer sampleo de Dataset por fecha
select
*
FROM `` TABLESAMPLE SYSTEM (5 PERCENT)
WHERE _table_suffix between '0101' and '0105' # Cambiamos fecha
AND stream_id IN ('') # Seleccionamos stream