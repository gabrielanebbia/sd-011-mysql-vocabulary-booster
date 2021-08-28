SELECT c.contactName AS 'Nome de contato',
s.shipperName AS 'Empresa que fez o envio',
o.orderDate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o
ON o.CustomerID = c.CustomerId
INNER JOIN w3schools.shippers AS s
ON s.ShipperID = o.ShipperID
WHERE s.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY ContactName, ShipperName, OrderDate;
