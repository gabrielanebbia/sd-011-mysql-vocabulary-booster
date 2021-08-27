SELECT c.ContactName AS 'Nome de contato',
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.orders o
INNER JOIN w3schools.shippers s
ON o.ShipperID = s.ShipperID
INNER JOIN w3schools.customers c
ON c.CustomerID = o.CustomerID
WHERE o.ShipperID IN (1, 2)
ORDER BY c.ContactName ASC,
s.ShipperName ASC,
o.OrderDate ASC;
