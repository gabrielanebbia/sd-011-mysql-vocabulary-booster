select ContactName as 'Nome de contato',
ShipperName as 'Empresa que fez o envio',
OrderDate as 'Data do pedido'
from w3schools.orders as orders
INNER JOIN w3schools.customers as customers
on orders.CustomerID = customers.CustomerID
INNER JOIN w3schools.shippers as shippers
on orders.ShipperID = shippers.ShipperID
WHERE shippers.ShipperName IN ("Speedy Express", "United Package")
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
