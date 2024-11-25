WITH silver_movies_clean AS (
    SELECT
        id,
        title,
        director,
        year,
        length_minutes
    --FROM {{ source('Bronze_dbt_workflow', 'raw_movies') }}
    FROM {{ ref('silver_movies_clean')  }}
), silver_sales_movies_clean AS (
SELECT
        movie_id, 
        rating, 
        domestic_sales, 
        international_sales
    FROM {{ ref('silver_sales_movies_clean')  }}
)

SELECT * FROM silver_movies_clean mc
JOIN silver_sales_movies_clean smc
ON id=movie_id