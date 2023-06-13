38. Classify employees based on the number of orders they have processed such that NumberOfOrders > 100 Then PerformanceCategory as ‘High Performing’. If NumberOfOrders>50 Then ‘Medium Performing’ and else ‘Lower Performing’

SELECT
    e.First_Name,
    e.Last_Name,
    COUNT(*) AS NumberOfOrders,
    CASE
        WHEN COUNT(*) > 100 THEN 'High Performing'
        WHEN COUNT(*) > 50 THEN 'Medium Performing'
        ELSE 'Lower Performing'
    END AS PerformanceCategory
FROM
    Employees e
    JOIN Orders o ON e.Employee_ID = o.Employee_ID
GROUP BY
    e.First_Name,
    e.Last_Name