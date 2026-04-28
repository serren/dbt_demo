select component_name
     , metric_name
     , min
     , max
  from {{ ref("metrics_agg") }}
 where "min" < 0
    or "max" > 100