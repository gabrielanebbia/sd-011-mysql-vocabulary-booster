SELECT p.productName AS `Produto`, p.price AS `Preço`
FROM w3schools.order_details AS o
INNER JOIN w3schools.products AS p
ON o.productId = p.productId
GROUP BY `Produto`, `Price`
HAVING MAX(o.quantity) > 80 ORDER BY `Produto`; 
