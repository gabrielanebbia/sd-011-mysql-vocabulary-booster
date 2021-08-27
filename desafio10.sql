SELECT a.ProductName AS "Produto", MIN(b.Quantity) AS 'Mínima' , MAX(b.Quantity) AS 'Máxima' , ROUND(AVG(b.Quantity), 2) AS 'Média'
FROM products AS a
INNER JOIN order_details AS b
ON a.ProductId = b.ProductId
GROUP BY a.ProductName
HAVING AVG(b.Quantity) > 20
ORDER BY AVG(b.Quantity), a.ProductName;
