--6. Get the customers who have placed more than 10 orders

SELECT
    c.Customer_ID,
    c.Company_Name,
    COUNT(o.Order_ID) AS TotalOrders
FROM
    Customers c
    JOIN Orders o ON c.Customer_ID = o.Customer_ID
GROUP BY
    c.Customer_ID,
    c.Company_Name
HAVING
    COUNT(o.Order_ID) > 10

