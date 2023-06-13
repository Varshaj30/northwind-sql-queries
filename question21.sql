--21. Get the list of customers who have ordered ‘Chai’ product

SELECT
  Customers.Customer_ID,
  Customers.Company_Name
FROM
  Customers
  INNER JOIN Orders ON Customers.Customer_ID = Orders.Customer_ID
  INNER JOIN Order_Details ON Orders.Order_ID = Order_Details.Order_ID
  INNER JOIN Products ON Order_Details.Product_ID = Products.Product_ID
WHERE
  Products.Product_Name = 'Chai'; 


