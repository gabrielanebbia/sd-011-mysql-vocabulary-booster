SELECT wcust.CONTACTNAME AS 'Nome de contato',
wship.SHIPPERNAME AS 'Empresa que fez o envio',
word.ORDERDATE AS 'Data do pedido'
FROM w3schools.customers AS wcust
INNER JOIN w3schools.shippers AS wship
INNER JOIN w3schools.orders AS word
ON word.CustomerID = wcust.CustomerID
WHERE wship.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY wcust.CONTACTNAME, wship.SHIPPERNAME, word.ORDERDATE;
