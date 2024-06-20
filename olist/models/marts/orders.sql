with t1 as (
    select
        *
    from
        {{ ref('stg__orders') }}
),
t2 as (
    select
        *
    from
        {{ ref('stg__order_payments') }}
),
t3 as (
    select
        *
    from
        {{ ref('stg__order_reviews') }}
),
t4 as (
    select
        *
    from
        {{ ref('stg__order_items') }}
)
select
    t1.*,
    t2.payment_sequential,
    t2.payment_type,
    t2.payment_installments,
    t2.payment_value,
    t3.review_id,
    t3.review_score,
    t3.review_comment_title,
    t3.review_comment_message,
    t3.comment_title_pontuation,
    t3.review_creation_date,
    t4.order_item_id,
    t4.product_id,
    t4.seller_id,
    t4.shipping_limit_date,
    t4.price,
    t4.freight_value,
    t4.num_items,
    t4.creation_date
from
    t1
    left join t2 on t1.order_id = t2.order_id
    left join t3 on t1.order_id = t3.order_id
    left join t4 on t1.order_id = t4.order_id