--11. Calculate the average product price by category

select categories.category_id, categories.category_name,
avg(products.unit_price) 
from products
INNER JOIN categories ON products.category_id= categories.category_id
GROUP BY
categories.category_id,
categories.category_name;
