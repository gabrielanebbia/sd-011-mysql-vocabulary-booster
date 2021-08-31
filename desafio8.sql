SELECT
  C.ContactName AS 'Nome de contato',
  S.ShipperName AS 'Data do pedido',
  O.OrderDate AS 'Empresa que fez o envio'
FROM
  w3schools.orders AS O
  INNER JOIN w3schools.shippers AS S ON O.ShipperID = S.ShipperID
  INNER JOIN w3schools.customers AS C ON O.CustomerID = C.CustomerID
WHERE
  S.ShipperName = "Speedy Express"
  OR S.ShipperName = "United Package"
ORDER BY
  C.ContactName ASC,
  S.ShipperName ASC,
  O.OrderDate ASC;
