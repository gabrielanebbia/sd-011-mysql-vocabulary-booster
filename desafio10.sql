SELECT p.ProductName AS 'Produto',
      MIN(order_details.Quantity) AS 'Mínima',
      MAX(order_details.Quantity) AS 'Máxima',
      ROUND(AVG(order_details.Quantity), 2) AS 'Média'
FROM w3schools.products p
INNER JOIN w3schools.order_details AS order_details ON p.ProductID = order_details.ProductID
GROUP BY p.ProductID
HAVING AVG(order_details.Quantity) > 20.00
ORDER BY Média, Produto ASC;
