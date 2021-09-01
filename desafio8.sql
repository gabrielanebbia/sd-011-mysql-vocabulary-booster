SELECT contactname AS 'Nome de contato', shippername AS 'Empresa que fez o envio',
DATE(orderdate) AS 'Data do pedido'
FROM w3schools.customers AS C
INNER JOIN w3schools.orders AS O
ON C.customerID = O.CustomerID
INNER JOIN w3schools.shippers AS S
ON S.ShipperID = O.ShipperID
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
