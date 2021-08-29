SELECT ct.ContactName AS 'Nome de contato',
sp.ShipperName AS 'Empresa que fez o envio', 
od.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS od
INNER JOIN w3schools.customers AS ct ON od.CustomerID = ct.CustomerID
INNER JOIN w3schools.shippers AS sp ON od.ShipperID = sp.ShipperID
WHERE sp.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY ct.ContactName, sp.ShipperName, od.OrderDate;
