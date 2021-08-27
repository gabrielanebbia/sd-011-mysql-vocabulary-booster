SELECT P.ProductName AS 'Produto',
P.Price AS 'Preço'
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS O
WHERE O.Quantity > 80
AND P.ProductID = O.ProductID
ORDER BY `Produto` ASC;