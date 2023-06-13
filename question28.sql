--28. Find the top 3 most popular categories of products ordered

SELECT
    c.Category_Name,
    COUNT(*) AS Order_Count
FROM
    Products p
    JOIN Categories c ON p.Category_ID = c.Category_ID
    JOIN Order_Details od ON p.Product_ID = od.Product_ID
GROUP BY
    c.Category_Name
ORDER BY
    Order_Count DESC
    limit 3

