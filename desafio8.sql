SELECT ContactName AS 'Nome de contato', ShipperName AS 'Empresa que fez o envio', 
ord.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS cst
INNER JOIN w3schools.orders AS ord ON cst.CustomerID = ord.CustomerID
INNER JOIN w3schools.shippers AS ship ON ship.ShipperID = ord.ShipperID
WHERE ShipperName IN ('Speedy Express', 'United Package')
ORDER BY ContactName, ShipperName, ord.OrderDate;
