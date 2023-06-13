--14. Find the most expensive product in each category

Select products.product_name, products.product_id, 
categories.category_name, categories.category_id,
max(products.unit_price)
from products
inner join categories on products.category_id = categories.category_id
group by categories.category_name

