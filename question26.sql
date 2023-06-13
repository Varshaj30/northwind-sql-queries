
--26. Find the customer who has ordered the most ‘Chai’ product

SELECT products.product_name,customers.customer_id,customers.company_name, 
sum(order_details.quantity) as TQ
from
customers
inner join order_details on order_details.order_id = orders.order_id
inner join orders on orders.customer_id = customers.customer_id
inner join products on products.product_id = order_details.product_id
where products.product_name = 'Chai'
group by
customers.customer_id,
customers.company_name
order by TQ desc
limit 1;

