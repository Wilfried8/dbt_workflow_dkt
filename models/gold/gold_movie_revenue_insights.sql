WITH revenue_data AS (
    SELECT
        movie_id,
        title,
        director,
        year,
        (domestic_sales + international_sales) AS total_revenue,
        CASE
            WHEN (domestic_sales + international_sales) > 100000000 THEN 'Blockbuster'
            WHEN (domestic_sales + international_sales) BETWEEN 50000000 AND 100000000 THEN 'Hit'
            ELSE 'Moderate'
        END AS revenue_category
    FROM {{ ref('silver_movies_final') }}
)
SELECT * FROM revenue_data
