SELECT p.ProductName AS 'Produto',
MIN(o.Quantity) AS 'Mínima',
MAX(o.Quantity) AS 'Máxima',
ROUND(avg(o.Quantity), 2) AS 'Média' 
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o ON o.ProductID = p.ProductID
GROUP BY p.ProductID HAVING ROUND(AVG(o.Quantity), 2) > 20
ORDER BY round(AVG(o.Quantity), 2) ASC, p.ProductName ASC;
