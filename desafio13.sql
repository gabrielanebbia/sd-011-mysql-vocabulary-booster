SELECT ProductName AS 'Produto', 
Price AS 'Preço' FROM w3schools.products t1 
WHERE ProductID IN (
SELECT ProductID FROM w3schools.order_details t2
WHERE t2.Quantity > 80)
ORDER BY ProductName;
