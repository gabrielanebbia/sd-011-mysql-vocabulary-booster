SELECT pro.ProductName AS `Produto`,
MIN(det.Quantity) AS `Mínima`,
MAX(det.Quantity) AS `Máxima`,
ROUND(AVG(det.Quantity), 2) AS `Média` 
FROM w3schools.products AS pro
INNER JOIN
w3schools.order_details AS det
ON det.ProductID = pro.ProductID
GROUP BY pro.ProductID
HAVING AVG(det.Quantity) > 20
ORDER BY `Média`, pro.ProductName;
