# Objetivo 
# debuggear eventos de APP y / o compras de WEB.

SELECT
event_timestamp, # Indicar el timestamp es clave para que cada fila sea un evento diferente.
event_name,
event_date,
event_params,
items
FROM ``  # Poner la fecha que corresponda.
where stream_id="" and # Insertar acá el stream ID que corresponda.
event_name IN ("", "", ...) # Insertar acá los nombres de los eventos, sea uno o más.
