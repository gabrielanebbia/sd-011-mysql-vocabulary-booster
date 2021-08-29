SELECT
ContactName AS 'Nome de contato',
sh.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS cus

INNER JOIN w3schools.orders AS ord
ON ord.CustomerID = cus.CustomerID

INNER JOIN w3schools.shippers AS sh
ON sh.ShipperID = ord.ShipperID

HAVING `Empresa que fez o envio` != 'Federal Shipping'
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
