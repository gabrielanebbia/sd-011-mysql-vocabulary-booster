select * from w3schools.customers; -- CustomerID 
select * from w3schools.shippers; -- ShipperID
select * from w3schools.products; -- ProductID SupplierID CategoryID
select * from w3schools.order_details; -- OrderDetailID, OrderID ProductID
select * from w3schools.orders; -- OrderID CustomerID ShipperID
SELECT
customers.ContactName AS "Nome de contato",
shippers.ShipperName AS "Empresa que fez o envio",
orders.OrderDate AS "Data do pedido"
FROM w3schools.customers AS customers
INNER JOIN w3schools.orders AS orders
ON customers.CustomerID = orders.CustomerID
INNER JOIN w3schools.shippers AS shippers
ON orders.ShipperID = shippers.ShipperID
WHERE shippers.ShipperName = "Speedy Express"
OR shippers.ShipperName = "United Package"
ORDER BY
`Nome de contato`,
`Empresa que fez o envio`,
`Data do pedido`;
 