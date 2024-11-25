{{ config(
    schema='silver_dbt_workflow'
) }}

WITH cleaned_data AS (
    SELECT
        id,
        title,
        director,
        year,
        length_minutes
    --FROM {{ source('Bronze_dbt_workflow', 'raw_movies') }}
    FROM {{ ref('bronze_movies')  }}
    WHERE 
        id IS NOT NULL
        AND title IS NOT NULL
        AND year BETWEEN 1997 AND 2100
        AND length_minutes BETWEEN 1 AND 200
        qualify row_number() over (partition by title, director) = 1 
),

deduplicated_data AS (
    SELECT DISTINCT
        *
    FROM cleaned_data
)

SELECT * FROM deduplicated_data