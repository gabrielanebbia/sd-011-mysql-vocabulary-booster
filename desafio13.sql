SELECT prod.ProductName AS Produto,
prod.Price AS Preço
FROM w3schools.order_details AS ordD
INNER JOIN w3schools.products AS prod
ON prod.ProductID = ordD.ProductID
WHERE ordD.Quantity > 80
ORDER BY prod.ProductName ASC;
