SELECT P.productName AS 'Produto', 
MIN(OD.quantity) AS 'Mínima', 
MAX(OD.quantity) AS 'Máxima', 
ROUND(AVG(OD.quantity), 2) AS 'Média'
FROM w3schools.order_details AS OD
INNER JOIN w3schools.products AS P ON P.productId = OD.productId
INNER JOIN w3schools.orders AS O ON O.orderId = OD.orderId
GROUP BY P.productId HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
