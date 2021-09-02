  select 
ProductName AS 'Produto',
ROUND(MIN(Quantity), 2) AS 'Mínima',
ROUND(MAX(Quantity), 2) AS 'Máxima',
ROUND(AVG(Quantity), 2) AS 'Média'
    from  products AS p 
    INNER JOIN order_details AS od 
    ON p.ProductID = od.ProductID
    GROUP BY ProductName
    HAVING AVG(Quantity) > 20
    ORDER BY ROUND(AVG(Quantity), 2), ProductName;
