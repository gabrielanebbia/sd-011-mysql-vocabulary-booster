SELECT p.ProductName AS 'Produto',
       p.Price AS 'Preço'
    FROM products p
    INNER JOIN order_details od ON od.ProductID = p.ProductID
    WHERE od.Quantity > 80
    ORDER BY p.ProductName ASC;
