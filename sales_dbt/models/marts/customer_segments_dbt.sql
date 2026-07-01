select
    customer_id,
    count(order_id) as total_orders,
    sum(revenue) as total_revenue,
    case
        when sum(revenue) >= 1000 then 'High'
        else 'Low'
    end as category
from {{ ref('stg_sales_clean') }}
group by customer_id