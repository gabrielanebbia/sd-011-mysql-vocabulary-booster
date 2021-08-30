SELECT prod.ProductName AS Produto,
prod.Price AS Preço
FROM w3schools.products AS prod
LEFT JOIN
w3schools.order_details AS ord
ON prod.ProductID = ord.ProductID
WHERE ord.Quantity > 80
ORDER BY prod.ProductName;
