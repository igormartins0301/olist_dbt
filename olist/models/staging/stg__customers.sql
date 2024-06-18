with source as (
    SELECT
        *
    FROM
        {{ source('db_olist', 'customers') }}
)
SELECT
    customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    customer_city,
    customer_state,
    CURRENT_TIMESTAMP AS data_criacao
FROM
    source