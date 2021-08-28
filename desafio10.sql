SELECT p.ProductName AS `Nome do produto`,
MIN(o.Quantity) AS `Mínima`,
MAX(o.Quantity) AS `Máxima`,
ROUND(AVG(o.Quantity),2) AS `Média`
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o
ON p.ProductID = o.ProductID
GROUP BY `Nome do produto`
HAVING ROUND(AVG(o.Quantity),2) > 20
ORDER BY `Média`, `Nome do produto`;
