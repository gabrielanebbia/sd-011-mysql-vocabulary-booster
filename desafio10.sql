SELECT products.ProductName AS 'Produto',
MIN(orderDetail.Quantity) AS 'Mínima',
MAX(orderDetail.Quantity) AS 'Máxima',
ROUND(AVG(orderDetail.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS orderDetail
LEFT JOIN w3schools.products AS products
ON orderDetail.ProductID = products.ProductID
GROUP BY orderDetail.ProductID
HAVING ROUND(AVG(orderDetail.Quantity), 2) > 20
ORDER BY ROUND(AVG(orderDetail.Quantity), 2) ASC,
products.ProductName ASC;
