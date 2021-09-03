SELECT prod.ProductName AS Produto, prod.Price AS Preço
FROM w3schools.products AS prod, w3schools.order_details AS ord
WHERE ord.Quantity > 80 AND prod.ProductID = ord.ProductID
ORDER BY prod.ProductName;
