--4.Find the total sales (Quantity*Unit_Price) for each category of products

SELECT
    c.Category_ID,
    c.Category_Name,
    SUM(od.Quantity * p.Unit_Price) AS TotalSales
FROM
    Categories c
    JOIN Products p ON c.Category_ID = p.Category_ID
    JOIN Order_Details od ON p.Product_ID = od.Product_ID
GROUP BY
    c.Category_ID,
    c.Category_Name
