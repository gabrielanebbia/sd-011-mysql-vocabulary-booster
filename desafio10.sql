SELECT P.ProductName AS Produto,
MIN(O.Quantity) AS Mínima,
MAX(O.Quantity) AS Máxima,
ROUND(AVG(O.Quantity), 2) AS Média
FROM w3schools.products P
INNER JOIN w3schools.order_details O
ON P.ProductID = O.ProductID
GROUP BY ProductName
HAVING Média > 20.00
ORDER BY Média, Produto;
