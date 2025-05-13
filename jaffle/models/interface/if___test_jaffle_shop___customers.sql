with

source as (
    select * from {{ source('test_jaffle_shop', 'customers') }}
),

renamed as (
    select
        id as customer_id,
        name as customer_name
    from source
)

select * from renamed
