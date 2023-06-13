--3. Get the total quantity of each product sold

SELECT
    p.Product_ID,
    p.Product_Name,
    SUM(od.Quantity) AS TotalQuantity
FROM
    Products p
    JOIN Order_Details od ON p.Product_ID = od.Product_ID
GROUP BY
    p.Product_ID,
    p.Product_Name

