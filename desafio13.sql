SELECT P.productName AS 'Produto', P.price AS 'Preço' 
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS OD ON OD.ProductID = P.ProductID
INNER JOIN w3schools.orders AS O ON O.OrderID = OD.OrderID
WHERE OD.Quantity > 80
ORDER BY `Produto`;
