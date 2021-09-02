SELECT p.ProductName AS 'Produto',
p.Price AS 'Preço'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON (SELECT od.ProductID WHERE od.Quantity > 80) = p.ProductID
ORDER BY p.ProductName;
