SELECT p.ProductName AS 'Produto',
p.Price AS 'Preço'
FROM w3schools.products AS p
LEFT JOIN (
SELECT ProductID, MAX(Quantity) AS 'pedidoMax'
FROM w3schools.order_details
GROUP BY ProductID
) AS mp
ON p.ProductID = mp.ProductID
WHERE mp.pedidoMax > 80
ORDER BY p.ProductName;
