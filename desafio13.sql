SELECT 
p.productname AS 'Produto',
p.price AS 'Preço'
FROM
products AS p
INNER JOIN order_details AS od
ON p.productid = od.productid
GROUP BY `Produto`
HAVING SUM(od.quantity) > 8
ORDER BY `Produto`;
