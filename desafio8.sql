SELECT c.ContactName AS 'Nome de contato', s.ShipperName AS 'Empresa que fez o envio', o.OrderDate as 'Data do pedido'
FROM w3schools.orders AS o
INNER JOIN w3schools.shippers AS s
ON o.ShipperID = s.ShipperID
INNER JOIN w3schools.customers as c
ON o.CustomerID = c.CustomerID
WHERE s.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
