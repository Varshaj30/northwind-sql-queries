--1. Get the total number of orders placed by each customer	

SELECT
    Customer_ID,
    COUNT(*) AS TotalOrders
FROM
    Orders
GROUP BY
    Customer_ID

