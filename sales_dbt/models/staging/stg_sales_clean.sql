select
    order_id,
    customer_id,
    product,
    quantity,
    price,
    price * quantity as revenue
from {{ source('sales', 'sales_raw') }}
where quantity > 0 and price > 0