SELECT 
P.ProductName AS 'Produto',
MIN(OD.Quantity) AS 'Mínima',
MAX(OD.Quantity) AS 'Máxima',
ROUND(AVG(OD.Quantity), 2) AS 'Média'
FROM
w3schools.order_details OD,
w3schools.products P
WHERE
OD.ProductID = P.ProductID
GROUP BY OD.ProductID
HAVING AVG(OD.Quantity) > 20
ORDER BY Média, Produto;
