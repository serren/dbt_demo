with source_data as (
select component_name
     , metric_name
     , from_timestamp::date
     , max(max_value)
     , min(min_value)
     , count(1) as "amount"
 from metrics.metrics
group by 1,2,3
)
select *
from source_data
order by 3,1,2
