C.ContactName AS 'Nome de contato',
S.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM
w3schools.customers C,
w3schools.orders O,
w3schools.shippers S
WHERE
S.ShipperName IN ('Speedy Express', 'United Package') AND
C.CustomerID = O.CustomerID AND O.ShipperID = S.ShipperID
ORDER BY C.ContactName, S.ShipperName, O.OrderDate;
