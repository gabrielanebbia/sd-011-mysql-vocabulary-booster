SELECT
  p.ProductName AS `Produto`,
  p.Price AS `Preço`
  FROM w3schools.products AS p
  WHERE p.ProductID IN (
    SELECT od.ProductID
    FROM w3schools.order_details AS od
    GROUP BY od.ProductID
    HAVING MAX(od.Quantity) > 80
  )
ORDER BY `Produto` ASC;
