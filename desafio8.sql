SELECT customer.ContactName AS "Nome de contato",
shipper.ShipperName AS "Empresa que fez o envio",
O.OrderDate AS "Data do pedido"
FROM w3schools.orders AS O
INNER JOIN w3schools.shippers AS shipper
ON shipper.ShipperID = O.ShipperID
INNER JOIN w3schools.customers AS customer
ON O.CustomerID = customer.CustomerID
WHERE O.ShipperID = 1 OR O.ShipperID = 2
ORDER BY 1 ASC, 2 ASC, 3 ASC;
