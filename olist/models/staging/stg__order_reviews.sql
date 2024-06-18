with source as (
    SELECT * 
    FROM {{ source('db_olist', 'order_reviews') }}
    )
SELECT 
    review_id
    ,order_id
    ,review_score
    ,review_comment_title
    ,review_comment_message
    ,case 
            when (review_comment_title is not null) and (review_comment_message is not null) then 2
            when (review_comment_title is not null) and (review_comment_message is null) then 1
            when (review_comment_title is null) and (review_comment_message is not null) then 1
    else 0 end as comment_title_pontuation
    ,review_creation_date
    ,review_answer_timestamp
FROM source