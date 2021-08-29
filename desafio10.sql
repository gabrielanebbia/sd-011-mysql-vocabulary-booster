SELECT prod.ProductName AS "Produto",
MIN(ord.Quantity) AS "Mínima",
MAX(ord.Quantity) AS "Máxima",
ROUND(AVG(ord.Quantity), 2) AS "Média"
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS ord
ON ord.ProductID = prod.ProductID
GROUP BY prod.ProductID
HAVING ROUND(AVG(ord.Quantity), 2) > 20
ORDER BY ROUND(AVG(ord.Quantity), 2) ASC, prod.ProductName ASC;
