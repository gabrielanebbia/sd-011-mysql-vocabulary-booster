SELECT
P.ProductName Produto,
MIN(OD.Quantity) Mínima,
MAX(OD.Quantity) Máxima,
ROUND(AVG(OD.Quantity), 2) Média
FROM products P
INNER JOIN order_details OD
ON P.ProductID = OD.ProductID
GROUP BY P.ProductName
HAVING Média > 20.00
ORDER BY Média, Produto;
