--15. Find the total revenue for the year 2016

select 
sum(products.unit_price * order_details.quantity * (1- order_details.discount)) as totalrevenue
from
orders
inner join order_details on orders.order_id = order_details.order_id
inner join products on products.product_id = order_details.product_id
where
year (orders.order_date) == 2016;