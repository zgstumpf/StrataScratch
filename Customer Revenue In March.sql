select
    cust_id
    , sum(total_order_cost) as revenue
from orders
where 
    year(order_date) = '2019' 
    and month(order_date) = '3'
group by cust_id
order by revenue desc
