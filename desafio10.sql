SELECT wp.PRODUCTNAME AS 'Produto',
MIN(word.QUANTITY) AS 'Mínima',
MAX(word.QUANTITY) AS 'Máxima',
ROUND(AVG(word.QUANTITY), 2) AS 'Média'
FROM w3schools.products AS wp
INNER JOIN w3schools.order_details AS word
ON wp.ProductID = word.ProductID
GROUP BY wp.ProductName HAVING ROUND(AVG(word.Quantity), 2) > 20
ORDER BY AVG(word.Quantity), wp.ProductName;
