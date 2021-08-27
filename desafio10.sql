SELECT
  P.ProductName AS `Produto`,
  MIN(OD.Quantity) AS `Mínima`,
  MAX(OD.Quantity) AS `Máxima`,
  ROUND(AVG(OD.Quantity), 2) AS `Média`
FROM order_details AS OD
INNER JOIN products AS P
  ON P.ProductID = OD.ProductID
GROUP BY OD.ProductID
HAVING AVG(OD.Quantity) > 20
ORDER BY `Média`, `Produto`;
