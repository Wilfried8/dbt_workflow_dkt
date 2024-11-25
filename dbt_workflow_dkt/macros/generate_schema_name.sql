{% macro generate_schema_name(custom_schema_name, node) %}
    {{ target.name }}_{{ custom_schema_name if custom_schema_name else target.schema }}
{% endmacro %}
