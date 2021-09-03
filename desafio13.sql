SELECT prod.ProductName AS 'Produto',
prod.Price AS 'Preço'
FROM w3schools.products AS prod
LEFT JOIN (
SELECT ProductID, MAX(Quantity) AS 'pedidoMax'
FROM w3schools.order_details
GROUP BY ProductID
) AS maxprod
ON prod.ProductID = maxprod.ProductID
WHERE maxprod.pedidoMax > 80
ORDER BY prod.ProductName;
