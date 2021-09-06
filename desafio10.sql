SELECT
p.productname AS 'Produto',
MIN(o_d.quantity) AS 'Mínima',
MAX(o_d.quantity) AS 'Máxima',
ROUND(AVG(o_d.quantity), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o_d
ON p.productid = o_d.productid
GROUP BY p.productid
HAVING ROUND(AVG(o_d.quantity), 2) > 20
ORDER BY ROUND(AVG(o_d.quantity), 2), p.productname;
