SELECT
p.ProductName Produto,
p.Price Preço
FROM w3schools.products p INNER JOIN  w3schools.order_details o
ON p.ProductID = o.ProductID
WHERE o.Quantity > 80
ORDER BY `Produto`;
