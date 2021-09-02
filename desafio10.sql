-- 10 - Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00
SELECT 
WP.ProductName AS 'Produto',
MIN(WO.Quantity) AS 'Mínima', 
MAX(WO.Quantity) AS 'Máxima', 
ROUND(AVG(WO.Quantity), 2) AS 'Média'
FROM 
w3schools.order_details AS WO 
INNER JOIN w3schools.products AS WP ON WP.ProductID = WO.ProductID
GROUP BY WP.ProductName HAVING Média > 20
ORDER BY AVG(WO.Quantity) ASC, WP.ProductName ASC;
