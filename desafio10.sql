SELECT 
pr.ProductName AS 'Produto',
MIN(ord.Quantity) AS 'Mínima',
MAX(ord.Quantity) AS 'Máxima',
ROUND(AVG(ord.Quantity), 2) AS 'Média'
FROM w3schools.products pr
INNER JOIN w3schools.order_details ord
ON pr.ProductID = ord.ProductID
GROUP BY pr.ProductID
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
