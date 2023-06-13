--13. .List all orders shipped to ‘Germany’

select order_id, ship_country
from orders
where ship_country = 'Germany';
