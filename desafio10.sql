SELECT products.ProductName as 'Produto',
MIN(order_details.Quantity) as 'Miníma',
MAX(order_details.Quantity) as 'Máxima',
ROUND(AVG(order_details.Quantity), 2) as 'Média'
from w3schools.products as products
INNER JOIN
w3schools.order_details as order_details
ON order_details.productID = products.productID
GROUP BY `Produto`
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
