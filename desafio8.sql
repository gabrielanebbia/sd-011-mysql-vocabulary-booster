SELECT cu.ContactName AS 'Nome de contato',
  sh.ShipperName AS 'Empresa que fez o envio',
  od.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS od
  INNER JOIN w3schools.shippers AS sh ON od.ShipperID = sh.ShipperID
  INNER JOIN w3schools.customers AS cu ON cu.CustomerID = od.CustomerID
WHERE od.ShipperID IN (1, 2)
ORDER BY cu.ContactName ASC,
  od.OrderDate ASC;
