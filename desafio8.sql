SELECT t2.ContactNAme AS 'Nome de contato',
t3.ShipperName AS 'Empresa que fez o envio',
t1.OrderDate AS 'Data do pedido'
FROM orders AS t1
INNER JOIN customers AS t2
ON t1.CustomerID = t2.CustomerID
INNER JOIN shippers AS t3
ON t1.ShipperID = t3.ShipperID
WHERE t3.ShipperName LIKE 'Speedy Express' OR t3.ShipperName LIKE 'United Package'
ORDER BY t2.ContactNAme ASC, t3.ShipperName ASC, t1.OrderDate ASC;
