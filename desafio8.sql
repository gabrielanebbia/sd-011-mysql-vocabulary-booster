SELECT cust.ContactName AS "Nome de contato",
ship.ShipperName AS `Empresa que fez o envio`,
ord.OrderDate AS "Data do pedido"
FROM w3schools.customers AS cust
INNER JOIN w3schools.orders AS ord
ON cust.CustomerID = ord.CustomerID
INNER JOIN w3schools.shippers AS ship
ON ord.ShipperID = ship.ShipperID
WHERE ship.ShipperName IN ("Speedy Express", "United Package")
ORDER BY cust.ContactName ASC, ship.ShipperName ASC, ord.OrderDate ASC;
