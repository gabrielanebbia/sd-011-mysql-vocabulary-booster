SELECT pro.ProductName AS Produto,
MIN(Quantity) AS Mínima,
MAX(Quantity) AS Máxima,
ROUND(AVG(Quantity), 2) AS Média
FROM w3schools.products AS pro
INNER JOIN w3schools.order_details AS ord
ON pro.ProductID = ord.ProductID
GROUP BY ord.ProductID
HAVING AVG(Quantity) > 20
ORDER BY Média, Produto;
