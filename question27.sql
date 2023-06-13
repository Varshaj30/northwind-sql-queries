--27. Find the average quantity of products ordered in each order

SELECT 
    o.Order_ID,
    AVG(od.Quantity) AS AverageQuantity
FROM 
    Orders o
    JOIN Order_Details od ON o.Order_ID = od.Order_ID
GROUP BY 
    o.Order_ID
