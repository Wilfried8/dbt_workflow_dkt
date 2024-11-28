
  SELECT
    rating AS invalid_value
  FROM `wtayo-sandbox`.`Bronze_dbt_workflow`.`raw_sales_movies`
  WHERE rating < 0 OR rating > 10
