SELECT P.ProductName AS 'Produto',
P.Price AS 'Preço'
FROM w3schools.order_details AS O
INNER JOIN w3schools.products AS P
ON O.ProductID = P.ProductID
WHERE O.Quantity > 80
ORDER BY P.ProductName ASC;
