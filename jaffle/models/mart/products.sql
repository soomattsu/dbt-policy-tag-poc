with

products as (
    select * from {{ ref('if___test_jaffle_shop___products') }}
)

select * from products
