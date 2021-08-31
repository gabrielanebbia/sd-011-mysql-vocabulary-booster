-- SELECT * FROM w3schools.customers;
-- SELECT * FROM w3schools.shippers;
-- SELECT * FROM w3schools.orders;

SELECT
c.ContactName AS 'Nome de contato',
sn.ShipperName AS 'Empresa que fez o envio',
od.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS od ON c.CustomerID = od.CustomerID
INNER JOIN w3schools.shippers AS sn ON sn.ShipperID = od.ShipperID
WHERE sn.ShipperName IN ("Speedy Express" , "United Package")
ORDER BY c.ContactName ASC, sn.ShipperName, od.OrderDate;
