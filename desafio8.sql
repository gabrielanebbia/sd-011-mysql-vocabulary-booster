SELECT customer.ContactName AS 'Nome de contato', ship.ShipperName AS 'Empresa que fez o envio', ord.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS customer
INNER JOIN w3schools.orders AS ord ON ord.CustomerID = customer.CustomerID
INNER JOIN w3schools.shippers AS ship ON ship.ShipperID = ord.ShipperID
WHERE ShipperName = 'Speedy Express' OR ShipperName = 'United Package'
ORDER BY ContactName, ShipperName, OrderDate;
