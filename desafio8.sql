SELECT cus.ContactName AS `Nome de contato`,
sh.ShipperName AS `Empresa que fez o envio`,
o.OrderDate AS `Data do pedido`
FROM w3schools.orders AS o
INNER JOIN
w3schools.shippers AS sh
ON sh.ShipperID = o.ShipperID
INNER JOIN
w3schools.customers AS cus
ON cus.CustomerID = o.CustomerID
WHERE sh.ShipperID IN (1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`,`Data do pedido`;
