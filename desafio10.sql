SELECT pro.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM
w3schools.products AS pro
INNER JOIN
w3schools.order_details AS od ON pro.ProductID = od.ProductID
GROUP BY ProductName
HAVING AVG(od.Quantity) > 20
ORDER BY AVG(od.Quantity), ProductName;
