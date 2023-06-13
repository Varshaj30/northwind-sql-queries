--2. Find all suppliers who provide products in the ‘Seafood’ category

SELECT DISTINCT
    s.Supplier_ID,
    s.Supplier_Name
FROM
    Suppliers s
    JOIN Products p ON s.Supplier_ID = p.Supplier_ID
    JOIN Categories c ON p.Category_ID = c.Category_ID
WHERE
    c.Category_Name = 'Seafood'

