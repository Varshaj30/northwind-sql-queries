--30. Find the employee who processed the most orders in August 2016

SELECT
    e.Employee_ID,
    e.First_Name,
    e.Last_Name,
    COUNT(*) AS OrderCount
FROM
    Employees e
    JOIN Orders o ON e.Employee_ID = o.Employee_ID
WHERE
    o.Order_Date >= '2016-08-01'
    AND o.Order_Date < '2016-09-01'
GROUP BY
    e.Employee_ID,
    e.First_Name,
    e.Last_Name
ORDER BY
    OrderCount DESC
    limit 1;