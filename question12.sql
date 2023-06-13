--12. Find the total revenue generated by each employee

SELECT
  employees.employee_id,
  CONCAT(employees.first_name, ' ', employees.last_name) AS employee_name,
  SUM(products.unit_price * order_details.quantity * (1 - order_details.discount)) AS TotalRevenue
FROM
  Employees
  INNER JOIN orders ON employees.employee_id = orders.employee_id
  INNER JOIN order_details ON orders.order_id = order_details.order_id
  inner join products on products.product_id = order_details.product_id
GROUP BY
  employees.employee_id,
  employee_name;
