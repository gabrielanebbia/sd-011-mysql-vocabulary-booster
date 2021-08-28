SELECT P.ProductName AS Produto, P.Price AS Preço FROM w3schools.products P INNER JOIN w3schools.order_details O ON O.Quantity > 80 ORDER BY Produto;
