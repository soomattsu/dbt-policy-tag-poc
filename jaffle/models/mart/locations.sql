with

locations as (
    select * from {{ ref('if___test_jaffle_shop___locations') }}
)

select * from locations
