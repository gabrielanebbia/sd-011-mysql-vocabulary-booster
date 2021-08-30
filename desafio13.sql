SELECT ProductName AS 'Produto', Price AS 'Preço'
FROM w3schools.products AS prd
INNER JOIN w3schools.order_details AS odd
ON prd.ProductID = odd.ProductID
WHERE Quantity > 80
ORDER BY ProductName ASC;
-- prd = product, odd = order details
