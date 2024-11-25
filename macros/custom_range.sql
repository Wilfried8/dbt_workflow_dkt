
{% macro test_custom_range(model, column_name, min, max) %}
  SELECT
    {{ column_name }} AS invalid_value
  FROM {{ model }}
  WHERE {{ column_name }} < {{ min }} OR {{ column_name }} > {{ max }}
{% endmacro %}
