SELECT P.ProductName AS 'Produto',
MIN(O.Quantity) AS 'Mínima',
MAX(O.Quantity) AS 'Máxima',
ROUND(AVG(O.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS O
LEFT JOIN w3schools.products AS P
ON O.ProductID = P.ProductID
GROUP BY O.ProductID
HAVING ROUND(AVG(O.Quantity), 2) > 20
ORDER BY ROUND(AVG(O.Quantity), 2),
P.ProductName;
