with

source as (
    select * from {{ source('test_jaffle_shop', 'items') }}
),

renamed as (
    select
        id as order_item_id,
        order_id,
        sku as product_id
    from source
)

select * from renamed
