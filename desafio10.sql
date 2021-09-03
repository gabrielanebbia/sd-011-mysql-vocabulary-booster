SELECT prdct.ProductName AS 'Produto',
MIN(ords.Quantity) AS 'Mínima',
MAX(ords.Quantity) AS "Máxima",
ROUND(AVG(ords.Quantity), 2) AS 'Média'
FROM w3schools.products AS prdct

INNER JOIN w3schools.order_details AS ords
ON ords.ProductID = prdct.ProductID

GROUP BY prdct.ProductID
HAVING ROUND(AVG (ords.Quantity), 2) > 20

ORDER BY ROUND(AVG(ords.Quantity), 2) ASC, prdct.ProductName ASC;
