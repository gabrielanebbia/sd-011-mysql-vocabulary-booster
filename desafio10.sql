select  p.ProductName as 'Produto',
MIN(od.Quantity) AS 'Minima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity),2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON p.ProductID = od.ProductID
GROUP BY od.ProductID
HAVING ROUND(AVG(od.Quantity), 2) > 20.00
ORDER BY ROUND(AVG(od.Quantity), 2), p.ProductName;
