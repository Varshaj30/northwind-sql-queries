
--33. Find the suppliers who supply the top 5 most sold products

SELECT
    s.supplier_ID,
    COUNT(*) AS ProductCount
FROM
    Suppliers s
    JOIN Products p ON s.Supplier_ID = p.Supplier_ID
    JOIN Order_Details od ON p.Product_ID = od.Product_ID
GROUP BY
    s.Supplier_ID
ORDER BY
    ProductCount DESC
    limit 5 ;

