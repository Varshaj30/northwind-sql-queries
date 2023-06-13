--7. Get the top 5 most sold products

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
ORDER BY
    TotalQuantity DESC
LIMIT 5

