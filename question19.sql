19. Find the customers who have spent more than $5000 in total
SELECT
    C.Customer_ID,
    C.Contact_Name,
    SUM(OD.Unit_Price * OD.Quantity) AS TotalSpent
FROM
    Customers AS C
    INNER JOIN Orders AS O ON C.Customer_ID = O.Customer_ID
    INNER JOIN Order_Details AS OD ON O.Order_ID = OD.Order_ID
GROUP BY
    C.Customer_ID,
    C.Contact_Name
HAVING
    SUM(OD.Unit_Price * OD.Quantity) > 5000
ORDER BY
    TotalSpent DESC;

 