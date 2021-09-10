SELECT p.ProductName AS 'Produto',
min(o.Quantity) AS 'Mínima',
max(o.Quantity) AS 'Máxima',
avg(o.Quantity) AS 'Média'
FROM products AS p 
INNER JOIN order_details AS o
ON o.ProductID = p.ProductID
WHERE (
    'Média' > 20
)
GROUP BY p.ProductName
ORDER BY 4 ASC, 1 ASC;