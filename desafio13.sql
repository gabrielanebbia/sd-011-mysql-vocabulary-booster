-- 13 - Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80
SELECT WP.ProductName AS 'Produto', WP.price AS 'Preço'
FROM w3schools.order_details AS WO
INNER JOIN w3schools.products AS WP
ON WO.ProductID = WP.ProductID
WHERE WO.Quantity > 80
ORDER BY WP.ProductName;
