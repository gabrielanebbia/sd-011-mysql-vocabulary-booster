SELECT
ContactName AS 'Nome de contato',
ShipperName AS 'Empresa que fez o envio',
OrderDate AS 'Data do pedido'
FROM w3schools.orders AS t1
INNER JOIN w3schools.customers AS t2 ON t1.CustomerID = t2.CustomerID
INNER JOIN w3schools.shippers AS t3 ON t1.ShipperID = t3.ShipperID
WHERE ShipperName IN ('Speedy Express', 'United Package')
ORDER BY ContactName, OrderDate;
