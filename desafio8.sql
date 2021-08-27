SELECT 
c.CustomerName AS 'Nome de contato',
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM
customers AS c
INNER JOIN
orders AS o ON c.CustomerID = o.CustomerID
INNER JOIN
shippers AS s ON s.ShipperID = o.ShipperID
GROUP BY c.CustomerName
HAVING s.ShipperName = 'Speedy Express'
OR s.ShipperName = 'United Package'
ORDER BY c.CustomerName , 'Empresa que fez o envio';
