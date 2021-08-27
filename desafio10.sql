SELECT prod.ProductName AS 'Produto',
MIN(details.Quantity) AS 'Mínima',
MAX(details.Quantity) AS 'Máxima',
ROUND(AVG(details.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS details
INNER JOIN w3schools.products AS prod
ON details.ProductID = prod.ProductID
GROUP BY Produto
HAVING (AVG(details.Quantity)) > 20
ORDER BY `Média`, `Produto`;
