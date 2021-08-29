SELECT ProductName AS 'Produto',
MIN(Quantity) AS 'Mínima',
MAX(Quantity) AS 'Máxima',
ROUND(AVG(Quantity), 2) AS 'Média'
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS pd 
ON od.ProductID = pd.ProductID
GROUP BY od.ProductID
HAVING AVG(Quantity) > 20
ORDER BY AVG(Quantity), ProductName ASC;
