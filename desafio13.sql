SELECT
  ProductName AS `Produto`,
  Price AS `Preço`
FROM w3schools.products AS P
WHERE EXISTS (
  SELECT * FROM w3schools.order_details
  WHERE P.ProductID = ProductID AND Quantity > 80
)
ORDER BY `Produto`;