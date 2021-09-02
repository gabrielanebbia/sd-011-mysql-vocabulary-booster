  select 
  ProductName AS 'Produto',
  Price AS 'Preço'
    FROM products AS p
    INNER JOIN order_details AS od
    ON p.ProductID = od.ProductID AND Quantity > 80
    ORDER BY ProductName;
