SELECT
	PDT.ProductName AS 'Produto',
	PDT.Price AS 'Preço'
FROM w3schools.products AS PDT
INNER JOIN w3schools.order_details AS ORD_DT
ON ORD_DT.Quantity > 80 
AND ORD_DT.ProductID = PDT.ProductID
ORDER BY `Produto`;