SELECT c.ContactName AS 'Nome de contato',
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.customers c
INNER JOIN orders o ON o.CustomerID = c.CustomerID
INNER JOIN shippers s ON s.ShipperID = o.ShipperID
WHERE s.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY c.ContactName ASC, s.ShipperName ASC, o.OrderDate ASC;

SELECT c.ContactName AS "Nome do contato",
s.ShipperName AS "Empresa que fez o envio",
o.OrderDate AS "Data do pedido"
FROM w3schools.customers c
INNER JOIN w3schools.orders o ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers s ON s.ShipperID = o.ShipperID
WHERE s.ShipperName IN ("Speedy Express" , "United Package")
ORDER BY c.ContactName ASC, s.ShipperName ASC, o.OrderDate ASC;

SELECT 
    customers.ContactName AS `Nome de contato`,
    shippers.ShipperName AS `Empresa que fez o envio`,
    orders.OrderDate AS `Data do pedido`
FROM
    w3schools.customers AS customers
        INNER JOIN
    w3schools.orders AS orders ON customers.CustomerID = orders.CustomerID
        INNER JOIN
    w3schools.shippers AS shippers ON shippers.ShipperID = orders.ShipperID
WHERE
    shippers.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY customers.ContactName , shippers.ShipperName , orders.OrderDate;