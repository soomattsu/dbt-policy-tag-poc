with

source as (
    select * from {{ source('test_jaffle_shop', 'orders') }}
),

renamed as (
    select
    -- id
        id as order_id,
        store_id as location_id,
        customer as customer_id,
    -- numeric
        subtotal as subtotal_cents,
        tax_paid as tax_paid_cents,
        order_total as order_total_cents,
        {{ cents_to_dollars('subtotal') }} as subtotal,
        {{ cents_to_dollars('tax_paid') }} as tax_paid,
        {{ cents_to_dollars('order_total') }} as order_total,
    -- timestamp
        {{ dbt.date_trunc('day', 'ordered_at') }} as ordered_at
    from source
)

select * from renamed
