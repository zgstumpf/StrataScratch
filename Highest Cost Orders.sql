select top(1)
    first_name
    , sum(total_order_cost) as total_order_cost
    , order_date
from orders
join customers
    on orders.cust_id = customers.id
where order_date between '2019-02-01' and '2019-05-01'
group by first_name, order_date
order by total_order_cost desc
