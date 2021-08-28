SELECT C.ContactName AS `Nome de contato`,
S.ShipperName AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido`
FROM customers AS C
INNER JOIN orders AS O ON C.CustomerID = O.CustomerID
INNER JOIN shippers AS S ON O.ShipperID = S.ShipperID
WHERE S.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
