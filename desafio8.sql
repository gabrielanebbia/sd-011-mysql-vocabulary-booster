SELECT
c.ContactName 'Nome de contato',
s.ShipperName 'Empresa que fez o envio',
o.OrderDate 'Data do pedido'
FROM w3schools.customers c
INNER JOIN w3schools.orders o ON c.CustomerID = o.CustomerID
INNER JOIN w3schools.shippers s ON s.ShipperID = o.ShipperID
WHERE s.ShipperName = 'Speedy Express' OR 'United Package'
ORDER BY c.ContactName, s.ShipperName, o.OrderDate;
