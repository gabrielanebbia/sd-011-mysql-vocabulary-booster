SELECT
product.ProductName AS 'Produto',
product.Price AS 'Preço'
FROM
w3schools.products AS product
INNER JOIN
w3schools.order_details AS order_details
ON product.ProductID = order_details.ProductID
WHERE order_details.Quantity > 80
ORDER BY `Produto` ASC;