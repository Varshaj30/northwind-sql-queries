--9. Find the customers who have not placed any orders

SELECT
    c.Customer_ID,
    c.Company_Name
FROM
    Customers c
    LEFT JOIN Orders o ON c.Customer_ID = o.Customer_ID
WHERE
    o.Customer_ID IS NULL
