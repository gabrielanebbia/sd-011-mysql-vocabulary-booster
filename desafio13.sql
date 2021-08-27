SELECT 
pr.ProductName AS 'Produto',
pr.Price AS 'Preço'
FROM w3schools.products pr
INNER JOIN w3schools.order_details de
ON pr.ProductID = de.ProductID
WHERE de.Quantity > 80
ORDER BY `Produto`;
