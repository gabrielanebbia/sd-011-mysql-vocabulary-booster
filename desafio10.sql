SELECT productname AS Produto, MIN(quantity) AS Mínima, MAX(quantity) AS Máxima,
ROUND(AVG(quantity), 2) AS Média
FROM w3schools.order_details AS OD
INNER JOIN w3schools.products AS P
ON OD.ProductID = P.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY `Média`, Produto;
