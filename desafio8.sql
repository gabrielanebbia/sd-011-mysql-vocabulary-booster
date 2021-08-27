SELECT 
cu.ContactName AS 'Nome de contato',
ord.OrderDate AS 'Data do pedido',
sh.ShipperName AS 'Empresa que fez o envio'
FROM w3schools.customers cu
INNER JOIN w3schools.orders ord
INNER JOIN w3schools.shippers sh
ON cu.CustomerID = ord.CustomerID
AND ord.ShipperID = sh.ShipperID
WHERE sh.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`
