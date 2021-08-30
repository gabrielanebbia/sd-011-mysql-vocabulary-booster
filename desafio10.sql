SELECT pr.ProductName AS Produto,
MIN(ordD.Quantity) AS Mínima,
MAX(ordD.Quantity) AS Máxima,
ROUND(AVG(ordD.Quantity), 2) AS Média
FROM w3schools.products AS pr
RIGHT JOIN w3schools.order_details AS ordD
ON pr.ProductID = ordD.ProductID
GROUP BY ProductName
HAVING AVG(ordD.Quantity) > 20
ORDER BY AVG(ordD.Quantity) ASC, pr.ProductName ASC;
