SELECT p.ProductName 'Produto', 
MIN(od.Quantity) 'Mínima',
MAX(od.Quantity) 'Máxima',
AVG(od.Quantity) 'Média'
FROM w3schools.order_details od
INNER JOIN w3schools.products p
ON od.ProductID = p.ProductID
GROUP BY od.ProductID
HAVING AVG(od.Quantity) > 20
ORDER BY AVG(od.Quantity);
