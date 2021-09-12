SELECT C.ContactName AS 'Nome de contato',
S.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM shippers AS S
INNER JOIN orders AS O
ON O.ShipperID = S.ShipperID
INNER JOIN customers AS C
ON C.CustomerID = O.CustomerID
WHERE S.ShipperID IN (1, 2) 
ORDER BY C.ContactName, S.ShipperName, O.OrderDate;
