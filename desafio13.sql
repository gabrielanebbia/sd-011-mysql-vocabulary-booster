SELECT P.ProductName AS `Produto`, P.Price AS `Preço` FROM w3schools.order_details OD INNER JOIN w3schools.products P ON P.ProductID = OD.ProductID WHERE OD.Quantity > 80 ORDER BY `Produto`;
