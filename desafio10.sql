SELECT
products_table.ProductName 'Produto',
MIN(details_table.Quantity) AS 'Mínima',
MAX(details_table.Quantity) AS 'Máxima',
ROUND(AVG(details_table.Quantity), 2) AS 'Média'
FROM
w3schools.order_details AS details_table
INNER JOIN
w3schools.products AS products_table ON details_table.ProductID = products_table.ProductID
GROUP BY `Produto` HAVING `Média` > 20.00
ORDER BY `Média` ASC, `Produto` ASC;
