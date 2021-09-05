SELECT 
wcust.CONTACTNAME AS 'Nome de contato',
word.ORDERDATE AS 'Data do pedido',
wship.SHIPPERNAME AS 'Empresa que fez o envio'
FROM w3schools.customers AS wcust
INNER JOIN w3schools.orders AS word
ON word.CustomerID = wcust.CustomerID
INNER JOIN w3schools.shippers AS wship
ON word.ShipperID = wship.ShipperID
WHERE wship.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY wcust.CONTACTNAME, wship.SHIPPERNAME, word.ORDERDATE;
