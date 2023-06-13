--34. Find the customers who have ordered products from all categories

SELECT
    c.Customer_ID,
    c.Company_Name
FROM
    Customers c
WHERE
    NOT EXISTS (
        SELECT
            DISTINCT Category_ID
        FROM
            Categories
        WHERE
            Category_ID NOT IN (
                SELECT DISTINCT
                    p.Category_ID
                FROM
                    Products p
                    JOIN Order_Details od ON p.Product_ID = od.Product_ID
                    JOIN Orders o ON od.Order_ID = o.Order_ID
                WHERE
                    o.Customer_ID = c.Customer_ID
            )
    );

