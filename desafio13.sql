SELECT P.ProductName AS Produto,
P.Price AS Preço
FROM products AS P
INNER JOIN order_details AS OD ON P.ProductID = OD.ProductID
WHERE OD.Quantity > 80
ORDER BY Produto;
