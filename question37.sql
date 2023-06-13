
37. Classify products based on their sales volume such that TotalQuantity > 1000 Then SalesCategory as ‘High Sales’. If TotalQuantity>500 Then ‘Medium Sales’ and else ‘Lower Sales’

SELECT
    p.Product_Name,
    SUM(od.Quantity) AS TotalQuantity,
    CASE
        WHEN SUM(od.Quantity) > 1000 THEN 'High Sales'
        WHEN SUM(od.Quantity) > 500 THEN 'Medium Sales'
        ELSE 'Lower Sales'
    END AS SalesCategory
FROM
    Products p
    JOIN Order_Details od ON p.Product_ID = od.Product_ID
GROUP BY
    p.Product_Name

