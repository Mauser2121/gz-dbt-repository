with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        Concat(orders_id, "_", pdt_id) as key,
        pdt_id as product_id,
        revenue,
        quantity

    from source

)

select * from renamed

