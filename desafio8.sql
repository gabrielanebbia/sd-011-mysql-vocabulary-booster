SELECT C.CustomerName AS 'Nome de contato',
ship.ShipperName AS 'Empresa que fez o envio',
orders.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS C
INNER JOIN w3schools.orders AS orders
ON orders.CustomerID = C.CustomerID
INNER JOIN w3schools.shippers AS ship
ON ship.ShipperID = orders.ShipperID
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;