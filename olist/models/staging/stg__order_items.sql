with source as (
    SELECT
        *
    FROM
        {{ source('db_olist', 'order_items') }}
)
SELECT
    order_id,
    order_item_id,
    product_id,
    seller_id,
    shipping_limit_date,
    price,
    freight_value,
    COUNT(order_item_id) OVER (PARTITION BY order_id) AS num_items,
    CURRENT_TIMESTAMP AS creation_date
FROM
    source