--8. Find the products that have never been ordered

SELECT
    p.Product_ID,
    p.Product_Name
FROM
    Products p
    LEFT JOIN Order_Details od ON p.Product_ID = od.Product_ID
WHERE
    od.Product_ID IS NULL
