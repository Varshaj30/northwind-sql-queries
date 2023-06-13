--20. List the top 5 employees who have processed the most orders

SELECT
  Employees.Employee_ID,
  CONCAT(Employees.First_Name, ' ', Employees.Last_Name) AS EmployeeName,
  COUNT(Orders.Order_ID) AS OrderCount
FROM
  Employees
  INNER JOIN Orders ON Employees.Employee_ID = Orders.Employee_ID
GROUP BY
  Employees.Employee_ID,
  EmployeeName
ORDER BY
  OrderCount DESC
LIMIT 5; 