SELECT C.ContactName AS 'Nome de contato',
S.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM w3schools.customers C
INNER JOIN w3schools.shippers S
INNER JOIN w3schools.orders O
ON C.CustomerID = O.CustomerID
AND O.ShipperID = S.ShipperID
AND S.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY C.ContactName, S.ShipperName, O.OrderDate;
