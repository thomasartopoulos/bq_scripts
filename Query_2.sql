# Objetivo
# auditar el evento purchase en APP filtrando por país y versión de la APP.

SELECT
event_timestamp,
event_name,
event_date,
geo.country as country,
platform,
app_info.version,
event_params,
items
FROM `` #poner la fecha que corresponda
where
stream_id = "" #poner el stream id que corresponda (android o iOS)
and
event_name = "purchase" 
and
geo.country = "" #poner el país que corresponda
and
app_info.version="" #poner la versión de app que corresponda