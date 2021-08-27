SELECT
P.ProductName AS 'Produto',
P.Price AS 'Preço'
FROM w3schools.order_details AS D
INNER JOIN w3schools.products AS P
ON P.ProductID = D.ProductID
WHERE D.Quantity > 80
ORDER BY Produto;