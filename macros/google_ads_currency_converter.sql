{% macro divide_by_one_million(column_name) %}

({{ column_name }} / 1000000) as {{ column_name }}

{% endmacro %}
