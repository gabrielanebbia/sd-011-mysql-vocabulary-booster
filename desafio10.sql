SELECT
p.ProductName AS 'Produto',
MIN(o.Quantity) AS 'Mínima',
MAX(o.Quantity) AS 'Máxima',
AVG(o.Quantity) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o ON p.ProductID = o.ProductID
GROUP BY p.ProductID
HAVING AVG(o.Quantity) > 20.00
ORDER BY AVG(o.Quantity), p.ProductName;
