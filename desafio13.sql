SELECT 
p.productname AS 'Produto',
p.price AS 'Preço'
FROM
products AS p
INNER JOIN order_details AS od
ON p.productid = od.productid
GROUP BY p.productname
HAVING SUM(od.quantity) > 8
ORDER BY p.productname;
