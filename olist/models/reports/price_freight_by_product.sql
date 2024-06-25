select
    product_id,
    avg(price) as avg_price,
    avg(freight_value) as avg_freight,
    (avg(freight_value) / avg(price)) * 100 avg_perc_freight_cost
from
    {{ ref('orders')}}
where
    product_id is not null
group by
    product_id