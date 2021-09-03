SELECT ProductName AS 'Produto',
Price AS 'Preço'
FROM w3schools.order_details AS d
INNER JOIN w3schools.products AS p
ON d.ProductID = p.ProductID
WHERE Quantity > 80
ORDER BY ProductName;
