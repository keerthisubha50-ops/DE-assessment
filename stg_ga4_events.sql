select
 -- event_id,
  event_name,
  timestamp_micros(event_timestamp) as event_ts,
  user_pseudo_id,
  traffic_source.source as traffic_source_source,
  traffic_source.medium as traffic_source_medium,
  traffic_source.name as traffic_source_name
from 
   `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
where 
   user_pseudo_id is not null
