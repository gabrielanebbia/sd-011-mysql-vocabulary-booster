SELECT
prds.ProductName AS 'Produto',
prds.Price AS 'Preço'
FROM
w3schools.products AS prds
INNER JOIN
w3schools.order_details AS o_d ON prds.ProductID = o_d.ProductID
WHERE o_d.Quantity > 80
ORDER BY `Produto`;
