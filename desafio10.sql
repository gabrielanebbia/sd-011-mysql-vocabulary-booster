SELECT ProductName AS 'Produto',
MIN(Quantity) AS 'Mínima',
MAX(Quantity) AS 'Máxima',
ROUND(AVG(Quantity), 2) AS 'Média'
FROM
w3schools.products AS p
INNER JOIN
w3schools.order_details AS od
ON
p.ProductID = od.ProductID
GROUP BY ProductName
HAVING AVG(Quantity) > 20
ORDER BY AVG(Quantity), ProductName;
