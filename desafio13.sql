SELECT p.ProductName AS 'Produto',
p.Price AS 'Preço'
FROM w3schools.products p
INNER JOIN w3schools.order_details q
ON p.ProductID = q.ProductID WHERE q.Quantity > 80
ORDER BY p.ProductName ASC;
