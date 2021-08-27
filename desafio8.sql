SELECT 
cus.ContactName AS 'Nome de contato',
shp.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido'
FROM
w3schools.customers AS cus
INNER JOIN
w3schools.orders AS ord ON cus.CustomerId = ord.CustomerID
INNER JOIN
w3schools.shippers AS shp ON shp.ShipperID = ord.ShipperID
WHERE
ShipperName = 'Speedy Express'
OR
ShipperName = 'United Package'
ORDER BY ContactName , ShipperName , OrderDate;
