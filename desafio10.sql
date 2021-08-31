-- SELECT* FROM w3schools.products;
-- SELECT* FROM w3schools.order_details;
-- SELECT* FROM w3schools;

SELECT
p.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.products AS p
LEFT JOIN w3schools.order_details AS od ON od.ProductID = p.ProductID
GROUP BY p.ProductID
HAVING ROUND(AVG(od.Quantity), 2) > 20
ORDER BY ROUND(AVG(od.Quantity), 2), p.ProductName ASC;
