with

source as (
    select * from {{ source('test_jaffle_shop', 'stores')}}
),

renamed as (
    select
        id as location_id,
        name as location_name,
        tax_rate,
        {{ dbt.date_trunc('day', 'opened_at') }} as opened_date
    from source
)

select * from renamed
