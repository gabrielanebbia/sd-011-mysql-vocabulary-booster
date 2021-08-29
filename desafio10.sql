SELECT
prod.ProductName AS Produto,
MIN(det.Quantity) AS Mínima,
MAX(det.Quantity) AS Máxima,
ROUND(AVG(det.Quantity),2) AS Média
FROM
w3schools.products AS prod
INNER JOIN
w3schools.order_details AS det ON det.ProductID = prod.ProductID
GROUP BY Produto
HAVING AVG(det.Quantity) > 20
ORDER BY Média , Produto;
