SELECT p.ProductName AS 'Produto',
MIN(o.Quantity) AS 'Mínima',
MAX(o.Quantity) AS 'Máxima',
ROUND(AVG(o.Quantity), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o
ON o.ProductID = p.ProductID
group by p.ProductName
having ROUND(AVG(o.Quantity), 2) > 20.00
order by 4 ASC, 1 ASC;
