SELECT items.ProductName AS 'Produto', items.Price AS 'Preço'
FROM w3schools.products AS items
INNER JOIN w3schools.order_details AS details ON details.ProductId = items.ProductId
WHERE details.quantity > 80
ORDER BY ProductName;
