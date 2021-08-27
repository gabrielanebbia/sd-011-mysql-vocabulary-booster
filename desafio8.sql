SELECT cat.ContactName AS 'Nome de contato', s.ShipperName AS 'Empresa que fez o envio', 
o.OrderDate AS 'Data do pedido' FROM w3schools.customers AS cat INNER JOIN w3schools.orders AS o INNER JOIN w3schools.shippers AS s
ON o.CustomerID = cat.CustomerID AND s.ShipperID = o.ShipperID
WHERE s.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY cat.ContactName, s.ShipperName, o.OrderDate;