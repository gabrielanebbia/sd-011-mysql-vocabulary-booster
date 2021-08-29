SELECT p.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.products p
INNER JOIN w3schools.order_details od
ON p.ProductID = od.ProductID
GROUP BY p.ProductName
HAVING ROUND(AVG(od.Quantity), 2) > 20
ORDER BY ROUND(AVG(od.Quantity), 2),
p.ProductName;

-- SELECT * FROM w3schools.products;