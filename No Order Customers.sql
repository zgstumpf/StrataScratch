select
    first_name
from customers
where not(exists(select cust_id from orders where cust_id = customers.id and order_date between '2019-02-01' and '2019-03-01'))
