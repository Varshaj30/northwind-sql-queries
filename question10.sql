--10. List all ‘Orders’ with ‘Customer’ details and ‘Employee’ who processed it

SELECT
    o.Order_ID,
    c.Customer_ID,
    c.Company_Name,
    e.Employee_ID,
    CONCAT(e.First_Name, ' ', e.Last_Name) AS Employee_Name
FROM
    Orders o
    JOIN Customers c ON o.Customer_ID = c.Customer_ID
    JOIN Employees e ON o.Employee_ID = e.Employee_ID
