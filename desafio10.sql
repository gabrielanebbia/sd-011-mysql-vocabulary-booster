SELECT pd.ProductName AS 'Produto',
  MIN(od.Quantity) AS 'Mínima',
  MAX(od.Quantity) AS 'Máxima',
  ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS od
  LEFT JOIN w3schools.products AS pd ON od.ProductID = pd.ProductID
GROUP BY od.ProductID
ORDER BY ROUND(AVG(od.Quantity), 2) ASC,
  pd.ProductName ASC;
