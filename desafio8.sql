SELECT ContactName as 'Nome de contato',
ShipperName as 'Empresa que fez o envio',
OrderDate as 'Data do pedido'
FROM w3schools.orders as o
INNER JOIN w3schools.shippers as s
ON o.ShipperID = s.ShipperID
INNER JOIN w3schools.customers as c
ON o.CustomerID = c.CustomerID
WHERE ShipperName IN ('Speedy Express', 'United Package')
ORDER BY ContactName, ShipperName, OrderDate;
