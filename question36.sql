36. Classify customers based on their total order amounts such that total order amounts > 5000 should be classified as ‘High Value’, if > 1000 then as ‘Medium Value’ and otherwise as ‘Low Value’

SELECT
    c.Customer_ID,
    c.Company_Name,
    SUM(p.Unit_Price * od.Quantity) AS TotalOrderAmount,
    CASE
        WHEN SUM(p.Unit_Price * od.Quantity) > 5000 THEN 'High Value'
        WHEN SUM(p.Unit_Price * od.Quantity) > 1000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS Classification
FROM
    Customers c
    JOIN Orders o ON c.Customer_ID = o.Customer_ID
    JOIN Order_Details od ON o.Order_ID = od.Order_ID
    JOIN Products p ON od.Product_ID = p.Product_ID
GROUP BY
    c.Customer_ID,
    c.Company_Name

