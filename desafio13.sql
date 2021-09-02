SELECT P.ProductName AS 'Produto', P.Price AS 'Preço'
FROM w3schools.products AS P
LEFT JOIN ( SELECT ProductID, MAX(Quantity) AS 'pedidoMax'
FROM w3schools.order_details
GROUP BY ProductID
) AS MP ON P.ProductID = MP.ProductID
WHERE MP.pedidoMax > 80
ORDER BY P.ProductName;
