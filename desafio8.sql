SELECT ContactName AS 'Nome de contato',
ShipperName AS 'Empresa que envio',
OrderDate AS 'Data do pedido'
FROM
w3schools.customers AS c
INNER JOIN
w3schools.orders AS o
ON
c.CustomerID = o.CustomerID
INNER JOIN
w3schools.shippers AS s
ON
o.ShipperID = s.ShipperID
WHERE ShipperName = 'Speedy Express'
OR ShipperName = 'United Package'
ORDER BY ContactName, ShipperName;
