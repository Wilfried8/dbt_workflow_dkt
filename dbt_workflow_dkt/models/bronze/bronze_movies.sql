
select 
    id,
    title,
    director,
    year,
    length_minutes
from {{ source('Bronze_dbt_workflow', 'raw_movies') }}