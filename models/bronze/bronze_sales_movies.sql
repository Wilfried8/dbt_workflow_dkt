
select 
    movie_id, 
    rating, 
    domestic_sales, 
    international_sales
from {{ source("Bronze_dbt_workflow", "raw_sales_movies") }}