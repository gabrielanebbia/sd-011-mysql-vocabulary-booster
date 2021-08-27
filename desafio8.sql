SELECT
customers_table.ContactName AS 'Nome de Contato',
shippers_table.ShipperName AS 'Empresa que fez o envio',
orders_table.OrderDate AS 'Data do pedido'
FROM
w3schools.customers AS customers_table
INNER JOIN
w3schools.orders AS orders_table ON customers_table.CustomerID = orders_table.CustomerID
INNER JOIN
w3schools.shippers AS shippers_table ON orders_table.ShipperID = shippers_table.ShipperID
WHERE
shippers_table.ShipperID IN (1, 2)
ORDER BY `Nome de Contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
