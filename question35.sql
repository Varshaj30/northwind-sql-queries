--35.  Find the total sales for each year

SELECT
    YEAR(Order_Date) AS SalesYear,
    SUM(products.Unit_Price * od.Quantity) AS TotalSales
FROM
    Orders o
    inner JOIN Order_Details od ON o.Order_ID = od.Order_ID
    inner join products On products.product_id = od.product_id
GROUP BY
    YEAR(Order_Date)
ORDER BY
    SalesYear;
