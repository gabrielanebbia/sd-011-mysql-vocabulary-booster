SELECT c.contactName AS 'Nome de contato',
s.shipperName AS 'Empresa que fez o envio',
o.orderDate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o
ON c.customerID = o.customerID
INNER JOIN w3schools.shippers AS s
ON o.shipperID = s.shipperID
WHERE s.shipperName = 'Speedy Express' OR s.shipperName = 'United Package'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
