SELECT P.ProductName AS "Produto",
P.Price AS "Preço"
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS AD
ON P.ProductID = AD.ProductID
WHERE AD.Quantity > 80
ORDER BY ProductName;
