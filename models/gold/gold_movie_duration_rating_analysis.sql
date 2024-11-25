WITH duration_analysis AS (
    SELECT
        movie_id,
        title,
        length_minutes,
        rating,
        domestic_sales,
        international_sales,
        CASE
            WHEN length_minutes < 90 THEN 'Short'
            WHEN length_minutes BETWEEN 90 AND 120 THEN 'Standard'
            ELSE 'Long'
        END AS duration_category
    FROM {{ ref('silver_movies_final') }}
)
SELECT * FROM duration_analysis
