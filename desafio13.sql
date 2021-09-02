SELECT 
    p.ProductName AS 'Produto', p.Price AS 'Preço'
FROM
    w3schools.products AS p,
    w3schools.order_details AS o
WHERE
    o.Quantity > 80 AND p.ProductID = o.ProductID
ORDER BY Produto;
