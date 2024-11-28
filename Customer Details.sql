SELECT
      customers.first_name
    , customers.last_name
    , customers.city
    , orders.order_details
FROM customers
LEFT JOIN orders ON customers.id = orders.cust_id
ORDER BY customers.first_name, orders.order_details
