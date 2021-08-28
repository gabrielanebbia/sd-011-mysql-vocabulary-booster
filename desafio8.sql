SELECT c.ContactName as 'Nome de contato', 
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
from w3schools.customers as c
INNER JOIN w3schools.orders AS o 
ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers AS s 
ON s.ShipperID = o.ShipperID
WHERE s.ShipperName IN 
('Speedy Express' , 'United Package')
ORDER BY c.ContactName, s.ShipperName, o.OrderDate;
