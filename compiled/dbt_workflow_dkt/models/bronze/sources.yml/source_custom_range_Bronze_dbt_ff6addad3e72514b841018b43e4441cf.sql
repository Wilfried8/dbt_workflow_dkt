
  SELECT
    length_minutes AS invalid_value
  FROM `wtayo-sandbox`.`Bronze_dbt_workflow`.`raw_movies`
  WHERE length_minutes < 2 OR length_minutes > 500
