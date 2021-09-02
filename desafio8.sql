SELECT
C.ContactName AS 'Nome de contato',
S.ShipperName AS 'Empresa que fez o envio',
O.orderDate AS 'Data do pedido'
FROM
customers AS C
INNER JOIN
orders AS O
ON  C.customerID = O.customerID
INNER JOIN
shippers AS S
ON S.ShipperID = O.ShipperID
WHERE S.ShipperName = "Speedy Express" OR S.ShipperName = "United Package"
ORDER BY C.ContactName ASC,
S.ShipperName ASC,
O.orderDate ASC;