SELECT pd.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.products AS pd
INNER JOIN w3schools.order_details AS od ON pd.ProductID = od.ProductID
GROUP BY pd.ProductName
HAVING `Média` > 20.00
ORDER BY `Média`, pd.ProductName;
