SELECT
P.ProductName AS 'Produto',
MIN(D.Quantity) AS 'Mínima',
MAX(D.Quantity) AS 'Máxima',
ROUND(AVG(D.Quantity), 2) AS 'Média'
FROM w3schools.products P
INNER JOIN w3schools.order_details D ON D.ProductID = P.ProductID
GROUP BY P.ProductName
HAVING `Média` > 20
ORDER BY `Média` ASC, `Produto` ASC;
