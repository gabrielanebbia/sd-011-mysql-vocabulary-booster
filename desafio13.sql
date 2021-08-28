SELECT P.ProductName AS 'Produto', 
P.Price AS 'Preço'
FROM products P
INNER JOIN
order_details O
ON O.ProductID = P.ProductID
WHERE O.Quantity > 80
ORDER BY Produto;
