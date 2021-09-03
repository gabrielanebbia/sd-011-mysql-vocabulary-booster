SELECT cust.ContactName AS 'Nome de contato',
ship.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido'
FROM w3schools.orders ord
INNER JOIN w3schools.customers cust
ON ord.CustomerID = cust.CustomerID
INNER JOIN w3schools.shippers ship
ON ord.ShipperID = ship.ShipperID
WHERE ship.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY cust.ContactName, ship.ShipperName, ord.OrderDate;
