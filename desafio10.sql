SELECT
pdt.ProductName AS 'Produto',
MIN(ords.Quantity) AS 'Mínima',
MAX(ords.Quantity) AS 'Máxima',
ROUND(AVG(ords.Quantity), 2) AS 'Média'
FROM w3schools.products AS pdt
INNER JOIN w3schools.order_details AS ords
ON ords.ProductID = pdt.ProductID
GROUP BY pdt.ProductName 
HAVING AVG(ords.Quantity) > 20.00
ORDER BY AVG(ords.Quantity), pdt.ProductName;
