SELECT
wc.ContactName AS 'Nome de contato',
wo.OrderDate AS 'Data do pedido',
ws.ShipperName AS 'Empresa que fez o envio'
FROM w3schools.customers AS wc
INNER JOIN w3schools.orders AS wo
ON wo.CustomerID = wc.CustomerID
INNER JOIN w3schools.shippers AS ws
ON wo.ShipperID = ws.ShipperID
WHERE ws.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY wc.ContactName, ws.ShipperName, wo.OrderDate;
