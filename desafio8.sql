SELECT
	c.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM w3schools.orders o
INNER JOIN w3schools.customers c
ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers s
ON o.ShipperID = s.ShipperID
WHERE s.ShipperName = 'Speedy Express' OR s.ShipperName = 'United Package'
ORDER BY 1, 2, 3 ASC;
