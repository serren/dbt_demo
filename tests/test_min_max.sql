select component_name
     , metric_name
     , min
     , max
  from {{ ref('metrics_agg') }}
 where "min" < 10
    or "max" > 90