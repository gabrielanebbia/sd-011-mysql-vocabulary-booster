SELECT
  p.ProductName AS 'Produto',
  MIN(od.Quantity) AS 'Mínima',
  MAX(od.Quantity) AS 'Máxima',
  AVG(od.Quantity) AS 'Média'
FROM
  order_details AS od
INNER JOIN
  products AS p
  ON od.ProductID = p.ProductID
GROUP BY
  p.ProductName
ORDER BY
  4 ASC,
  1 ASC;
