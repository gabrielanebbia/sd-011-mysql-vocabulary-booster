SELECT
p.ProductName AS "Nome do produto",
MIN(od.Quantity) AS "Mínima",
MAX(od.Quantity) AS "Máxima",
ROUND(AVG(od.Quantity), 2) AS "Média"
FROM w3schools.products p
LEFT JOIN w3schools.order_details od ON od.ProductID = p.ProductID
GROUP BY p.ProductID
ORDER BY ROUND(AVG(od.Quantity), 2) ASC, p.ProductName ASC;
