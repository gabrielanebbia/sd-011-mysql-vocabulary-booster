SELECT
P.ProductName AS 'Produto',
MIN(D.Quantity) AS 'Mínima',
MAX(D.Quantity) AS 'Máxima',
ROUND(AVG(D.Quantity), 2) AS 'Média'
FROM products AS P
INNER JOIN order_details AS D ON D.ProductID = P.ProductID
GROUP BY P.ProductName
HAVING `Média` > 20
ORDER BY `Média` ASC, `Produto` ASC;
