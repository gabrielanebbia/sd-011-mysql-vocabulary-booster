SELECT
  cus.ContactName AS 'Nome de contato',
  shi.ShipperName AS 'Empresa que fez o envio',
  ord.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS cus
INNER JOIN w3schools.orders AS ord
ON cus.CustomerID = ord.CustomerID
INNER JOIN w3schools.shippers AS shi
ON ord.ShipperID = shi.ShipperID
WHERE shi.ShipperID IN (1, 2)
ORDER BY cus.ContactName, shi.ShipperName, ord.OrderDate;
