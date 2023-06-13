--5. List the employees and the number of orders each employee has taken

SELECT
    e.Employee_ID,
    e.First_Name,
    e.Last_Name,
    COUNT(o.Order_ID) AS NumberOfOrders
FROM
    Employees e
    LEFT JOIN Orders o ON e.Employee_ID = o.Employee_ID
GROUP BY
    e.Employee_ID,
    e.First_Name,
    e.Last_Name
