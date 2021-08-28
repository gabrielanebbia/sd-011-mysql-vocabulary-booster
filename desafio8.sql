SELECT
cons.ContactName AS `Nome de contato`,
ship.ShipperName AS `Empresa que fez o envio`,
ord.OrderDate AS `Data do pedido`
FROM
w3schools.customers AS cons
INNER JOIN
w3schools.orders AS ord ON cons.CustomerID = ord.CustomerID
INNER JOIN
w3schools.shippers AS ship ON ship.ShipperID = ord.ShipperID
WHERE
ship.ShipperID <> 3
ORDER BY
`Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
