with source as (
    SELECT
        *
    FROM
        {{ source('db_olist', 'order_payments') }}
)
SELECT
    *
FROM
    source