SELECT
ProductName AS 'Produto',
MIN(Quantity) AS 'Mínima',
MAX(Quantity) AS 'Máxima',
ROUND(AVG(Quantity), 2) AS 'Média'
FROM w3schools.order_details AS t1
INNER JOIN w3schools.products AS t2 ON t1.ProductID = t2.ProductID
GROUP BY t1.ProductID
HAVING AVG(Quantity) > 20
ORDER BY AVG(Quantity), ProductName;
