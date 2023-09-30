# Objetivo
# Engagement rate

select
    CASE 
    WHEN params.key='page_title' 
            THEN params.value.string_value END,
            safe_divide(count(distinct case when (select value.string_value from unnest(event_params) where key = 'session_engaged') = '1' then concat(user_pseudo_id,(select value.int_value from unnest(event_params) where key = 'ga_session_id')) end),count(distinct concat(user_pseudo_id,(select value.int_value from unnest(event_params) where key = 'ga_session_id')))) as engagement_rate
from
    ``,
    UNNEST (event_params) as params
GROUP BY 1