SELECT p.ProductName Produto,
p.Price Preço
FROM w3schools.products p
INNER JOIN w3schools.order_details o
ON o.ProductID = p.ProductID AND o.Quantity > 80
ORDER BY ProductName;
