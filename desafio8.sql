SELECT c.contactname AS 'Nome de contato',
s.shippername AS 'Empresa que fez o envio',
o.orderdate AS 'Data do pedido'
FROM w3schools.orders AS o
INNER JOIN w3schools.customers AS c ON c.customerid = o.customerid
INNER JOIN w3schools.shippers AS s ON s.shipperid = o.shipperid
WHERE s.shippername IN('Speedy Express', 'United Package')
ORDER BY c.contactname, s.shippername;
