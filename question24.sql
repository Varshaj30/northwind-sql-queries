--24. Find the order with the highest total cost

SELECT
  Orders.Order_ID,
  SUM(products.Unit_Price * Order_Details.Quantity * (1 - Order_Details.Discount)) AS TotalCost
FROM
  Orders
  INNER JOIN Order_Details ON Orders.Order_ID = Order_Details.Order_ID
  INNER JOIN products on products.Product_ID = order_details.Product_ID
GROUP BY
  Orders.Order_ID
ORDER BY
  TotalCost DESC
LIMIT 1;


