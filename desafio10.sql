SELECT p.ProductName AS Produto,
MIN(od.Quantity) AS Mínimo,
MAX(od.Quantity) AS Máximo,
ROUND(AVG(od.Quantity), 2) AS Média
FROM order_details AS od
INNER JOIN products AS p
ON p.ProductID = od.ProductID
GROUP BY p.ProductName
HAVING AVG(od.Quantity) > 20
ORDER BY AVG(od.Quantity), p.ProductName;
