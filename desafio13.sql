SELECT prod.ProductName AS 'Produto',
prod.Price AS 'Preço'
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS details
ON prod.ProductID = details.ProductID AND details.Quantity > 80
ORDER BY ProductName;