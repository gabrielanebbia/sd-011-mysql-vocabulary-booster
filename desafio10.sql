SELECT
  p.ProductName AS 'Produto',
  ROUND(MIN(od.Quantity), 2) AS 'Mínima',
  ROUND(MAX(od.Quantity), 2) AS 'Máxima',
  ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM
  order_details AS od
INNER JOIN
  products AS p
  ON od.ProductID = p.ProductID
GROUP BY
  p.ProductName
HAVING
  ROUND(AVG(od.Quantity), 2) > 20
ORDER BY
  4 ASC,
  1 ASC;
