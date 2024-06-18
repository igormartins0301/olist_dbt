select
    *
from
    {{ ref('stg__order_reviews') }}
        where
            review_score not in (1, 2, 3, 4, 5)