--29. Find the month in the year 2016 with the highest total sales

SELECT
  order_date,
  TotalSales
FROM
  (
    SELECT
      orders.order_date,
      SUM(products.unit_price * order_details.Quantity * (1 - order_details.Discount)) AS TotalSales
    FROM
      Orders
      INNER JOIN order_details ON orders.order_ID = Order_Details.Order_ID
      Inner JOIN products ON products.Product_ID = order_details.Product_ID
    WHERE
      YEAR(Order_Date) = 2016
    GROUP BY
      orders.order_date
  ) AS MonthlySales
ORDER BY
  TotalSales DESC
LIMIT 1;



