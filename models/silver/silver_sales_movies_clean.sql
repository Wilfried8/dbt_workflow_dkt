WITH cleaned_data AS (
    SELECT
        movie_id, 
        rating, 
        domestic_sales, 
        international_sales
    FROM {{ ref('bronze_sales_movies')  }}
    WHERE 
        movie_id IS NOT NULL
        AND rating IS NOT NULL
),

deduplicated_data AS (
    SELECT DISTINCT
        *
    FROM cleaned_data
)

SELECT * FROM deduplicated_data