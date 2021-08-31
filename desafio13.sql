SELECT
  P.ProductName AS 'Produto',
  P.price AS 'Preço'
FROM
  w3schools.products AS P,
  w3schools.order_details AS OD
WHERE
  OD.ProductID = P.ProductID
  AND OD.Quantity > 80
ORDER BY
  P.ProductName ASC;
