SELECT p.ProductName AS 'Produto', min(od.Quantity) AS 'Mínima', max(od.Quantity) AS 'Máxima', round(AVG(od.Quantity), 2) 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details as od
ON p.ProductID = od.ProductID
GROUP BY p.ProductID
HAVING `Média` > 20
ORDER BY `Média` ASC, `Produto` ASC;
