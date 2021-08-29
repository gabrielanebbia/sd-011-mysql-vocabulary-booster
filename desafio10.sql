SELECT 
prds.ProductName AS 'Produto',
MIN(o_d.Quantity) AS 'Mínima',
MAX(o_d.Quantity) AS 'Máxima',
ROUND(AVG(o_d.Quantity), 2) AS 'Média'
FROM
w3schools.products AS prds
INNER JOIN
w3schools.order_details AS o_d ON prds.ProductID = o_d.ProductID
GROUP BY prds.ProductName
HAVING `Média` > 20.00
ORDER BY `Média` , `Produto`;
