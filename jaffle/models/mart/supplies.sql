with

supplies as (
    select * from {{ ref('if___test_jaffle_shop___supplies') }}
)

select * from supplies
