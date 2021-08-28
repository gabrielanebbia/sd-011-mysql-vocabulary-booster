SELECt O.ProductName AS 'Produto',
MIN(OD.Quantity) AS 'Mínima',
MAX(OD.Quantity) AS 'Máxima',
ROUND(AVG(OD.Quantity), 2) AS 'Média'
FROM products AS O
INNER JOIN order_details AS OD
ON O.ProductID = OD.ProductID
GROUP BY O.ProductName
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
