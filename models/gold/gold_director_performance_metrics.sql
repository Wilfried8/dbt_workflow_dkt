WITH director_performance AS (
    SELECT
        director,
        COUNT(DISTINCT movie_id) AS total_movies_directed,
        AVG(rating) AS avg_rating,
        SUM(domestic_sales + international_sales) AS total_revenue_generated
    FROM {{ ref('silver_movies_final') }}
    GROUP BY director
)
SELECT * FROM director_performance
