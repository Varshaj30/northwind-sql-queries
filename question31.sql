--31.  Find the top 3 customers who have ordered the most products

SELECT 
    c.Category_Name,
    COUNT(*) AS OrderCount
FROM
    Products p
    JOIN Categories c ON p.Category_ID = c.Category_ID
    JOIN Order_Details od ON p.Product_ID = od.Product_ID
GROUP BY
    c.Category_Name
ORDER BY
    OrderCount DESC
    limit 3;

