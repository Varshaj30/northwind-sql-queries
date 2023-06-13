--16. List all products that are discontinued

Select product_name, discontinued
from products
where discontinued is '0'
