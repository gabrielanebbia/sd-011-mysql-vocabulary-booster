
SELECT
C.ContactName AS 'Nome de contato',
S.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM customers C
INNER JOIN orders O ON O.CustomerID = C.CustomerID
INNER JOIN shippers S ON S.ShipperID = O.ShipperID
WHERE  S.ShipperName IN('Speedy Express', 'United Package')
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC,
`Data do pedido` ASC;
