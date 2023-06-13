--22. Get the employees who have processed orders for ‘Chai’ product

SELECT DISTINCT
  Employees.Employee_ID,
  CONCAT(Employees.First_Name, ' ', Employees.Last_Name) AS EmployeeName
FROM
  Employees
  INNER JOIN Orders ON Employees.Employee_ID = Orders.Employee_ID
  INNER JOIN Order_Details ON Orders.Order_ID = Order_Details.Order_ID
  INNER JOIN Products ON Order_Details.Product_ID = Products.Product_ID
WHERE
  Products.Product_Name = 'Chai'; 

