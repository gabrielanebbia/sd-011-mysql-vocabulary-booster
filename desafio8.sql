SELECT ContactName AS 'Nome de contato',
S.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM customers AS C
INNER JOIN orders AS O
ON O.CustomerID = C.CustomerID
INNER JOIN shippers AS S
ON S.ShipperID = O.ShipperID
WHERE S.ShipperName IN('Speedy Express', 'United Package')
ORDER BY ContactName, S.ShipperName, O.OrderDate;
