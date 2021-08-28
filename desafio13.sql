SELECT 
t2.ProductName AS "Produto",
t2.Price AS "Preço"
FROM w3schools.order_details AS t1
INNER JOIN w3schools.products AS t2
ON t1.ProductID = t2.ProductID
WHERE t1.Quantity > 80
GROUP BY t1.ProductID
ORDER BY t2.ProductName;
