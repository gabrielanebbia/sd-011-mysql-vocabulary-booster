SELECT ProductName AS 'Produto',
MIN(Quantity) AS 'Mínima',
MAX(Quantity) AS 'Máxima',
ROUND(AVG(Quantity), 2) AS 'Média'
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS p
ON od.ProductID = p.ProductID
GROUP BY ProductName
HAVING AVG(Quantity) > '20.00'
ORDER BY `Média`, ProductName;
-- uso de having visto na thread feita pelo colega SilvaLenilson no Slack
