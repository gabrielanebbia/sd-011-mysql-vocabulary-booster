SELECT 
    p.ProductName AS 'Produto',
    COUNT(o.Quantity) AS 'Total de pedidos',
    MIN(o.Quantity) AS 'Mínima',
    MAX(o.Quantity) AS 'Máxima',
    AVG(o.Quantity) AS 'Média'
FROM
    products AS p
        INNER JOIN
    order_details AS o ON p.ProductID = o.ProductID
GROUP BY p.ProductName
ORDER BY AVG(o.Quantity) , p.ProductName;
