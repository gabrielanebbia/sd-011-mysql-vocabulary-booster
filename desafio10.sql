SELECT p.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.products p
INNER JOIN w3schools.order_details od ON od.ProductID = p.ProductID
GROUP BY p.ProductID
ORDER BY AVG(od.Quantity), p.ProductName;
