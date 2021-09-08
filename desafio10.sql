SELECT p.ProductName AS 'Produto',
MIN(q.Quantity) AS 'Mínima',
MAX(q.Quantity) AS 'Máxima',
ROUND(avg(q.Quantity), 2) AS 'Média' 
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS q ON q.ProductID = p.ProductID
GROUP BY p.ProductID HAVING ROUND(AVG(q.Quantity), 2) > 20
ORDER BY round(AVG(q.Quantity), 2) ASC, p.ProductName ASC;
