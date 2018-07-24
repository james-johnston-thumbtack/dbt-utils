{% macro hash(field) -%}
  {{ adapter_macro('dbt_utils.hash', field) }}
{%- endmacro %}


{% macro default__hash(field) -%}
    md5({{field}})
{%- endmacro %}


{% macro bigquery__hash(field) -%}
    to_hex({{dbt_utils.default__hash(field)}})
{%- endmacro %}
