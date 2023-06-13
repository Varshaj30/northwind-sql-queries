--25. Find the employees who have processed more than 100 orders

SELECT
  Employees.Employee_ID,
  CONCAT(Employees.First_Name, ' ', Employees.Last_Name) AS Employee_Name,
  COUNT(Orders.Order_ID) AS Order_Count
FROM
  Employees
  INNER JOIN Orders ON Employees.Employee_ID = Orders.Employee_ID
GROUP BY
  Employees.Employee_ID,
  Employee_Name
HAVING
  Order_Count > 100;