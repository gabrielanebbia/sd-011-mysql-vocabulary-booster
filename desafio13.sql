SELECT
pro.ProductName AS Produto,
pro.Price AS Preço
FROM w3schools.products AS pro
INNER JOIN w3schools.order_details AS ord_d
ON pro.ProductID = ord_d.ProductID
WHERE ord_d.Quantity > 80
ORDER BY Produto;
