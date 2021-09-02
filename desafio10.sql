SELECT t1.ProductName AS 'Produto',
MIN(t2.Quantity) AS 'Mínima',
MAX(t2.Quantity) AS 'Máxima',
ROUND(AVG(t2.Quantity), 2) AS 'Média'
FROM products AS t1
INNER JOIN order_details AS t2
ON t1.ProductID = t2.ProductID
GROUP BY t1.ProductID
HAVING AVG(t2.Quantity) > 20
ORDER BY ROUND(AVG(t2.Quantity), 2) ASC, t1.ProductName ASC;
