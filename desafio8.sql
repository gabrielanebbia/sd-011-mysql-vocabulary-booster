SELECT cus.ContactName AS 'Nome de contato',
ship.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS ord
RIGHT JOIN w3schools.customers AS cus
ON ord.CustomerID = cus.CustomerID
INNER JOIN  w3schools.shippers AS ship
ON ship.ShipperID = ord.ShipperID
WHERE ShipperName <> 'Federal Shipping'
ORDER BY cus.ContactName ASC, ship.ShipperName ASC, ord.OrderDate ASC;
