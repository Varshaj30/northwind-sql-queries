--32. Find the employees who have not processed any orders

SELECT
    e.Employee_ID,
    e.First_Name,
    e.Last_Name
FROM
    Employees e
WHERE
    e.Employee_ID NOT IN (SELECT DISTINCT Employee_ID FROM Orders)

