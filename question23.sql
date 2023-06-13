--23. Find the most common shipping country

SELECT
  Ship_Country,
  COUNT(*) AS Order_Count
FROM
  Orders
GROUP BY
  Ship_Country
ORDER BY
  Order_Count DESC
LIMIT 1; 

