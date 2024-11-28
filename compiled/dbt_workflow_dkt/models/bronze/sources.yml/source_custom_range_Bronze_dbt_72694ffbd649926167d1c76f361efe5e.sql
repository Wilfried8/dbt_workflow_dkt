
  SELECT
    year AS invalid_value
  FROM `wtayo-sandbox`.`Bronze_dbt_workflow`.`raw_movies`
  WHERE year < 1700 OR year > 2026
