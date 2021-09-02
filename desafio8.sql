SELECT c.ContactName AS 'Nome de contato',
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM orders AS o
INNER JOIN customers AS c ON o.CustomerID = c.CustomerID
INNER JOIN shippers AS s ON o.ShipperID = s.ShipperID
WHERE o.ShipperID 	BETWEEN 1 AND 2
ORDER BY c.ContactName, s.ShipperName, o.OrderDate;
