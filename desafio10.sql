SELECT p.ProductName AS 'Produto',
min(o.Quantity) AS 'Mínima',
max(o.Quantity) AS 'Máxima',
round(avg(o.Quantity),2) AS 'Média'
FROM products AS p 
INNER JOIN order_details AS o
ON o.ProductID = p.ProductID
GROUP BY p.ProductName
HAVING ROUND(AVG(o.Quantity), 2) > 20.00
ORDER BY 4, 1;
