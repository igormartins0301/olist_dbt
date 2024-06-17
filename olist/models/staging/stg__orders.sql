with source as (
    SELECT
        *
    FROM
        {{ source('db_olist', 'orders') }}
) 
SELECT 
    order_id,
    customer_id,
    order_status,
    date(order_purchase_timestamp) as order_purchase_timestamp,
    order_approved_at,
    order_delivered_carrier_date,
    order_delivered_customer_date,
    order_estimated_delivery_date
FROM
    source