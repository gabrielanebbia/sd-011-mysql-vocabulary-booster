SELECT p.productName AS 'Produto',
MIN(o.quantity) AS 'Mínima',
MAX(o.quantity) AS 'Máxima',
ROUND(AVG(o.quantity), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o
ON p.productID = o.productID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
