SELECT p.ProductName Produto,
MIN(o.Quantity) as Mínima,
MAX(o.Quantity) as Máxima,
ROUND(AVG(o.Quantity), 2) as Média
FROM w3schools.products p
INNER JOIN w3schools.order_details o 
ON o.ProductID = p.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média, Produto;