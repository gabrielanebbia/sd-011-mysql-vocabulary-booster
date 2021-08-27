SELECT p.ProductName AS `Produto`,
MIN(Quantity) AS `Mínima`,
MAX(Quantity) AS `Máxima`,
ROUND(AVG(Quantity), 2) AS `Média`
FROM w3schools.order_details AS o
INNER JOIN w3schools.products AS p
ON o.ProductID = p.ProductID
GROUP BY o.ProductID
HAVING ROUND(AVG(Quantity), 2) > 20
ORDER BY `Média`, `Produto`;
