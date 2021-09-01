  select 
ContactName AS  'Nome de contato',
ShipperName AS "Empresa que fez o envio",
OrderDate AS "Data do pedido"
  from  customers AS c
  INNER JOIN orders  AS o
  ON c.CustomerID = o.CustomerID
  INNER JOIN shippers AS s
  ON o.ShipperID = s.ShipperID
  WHERE ShipperName IN ('Speedy Express', 'United Package')
  ORDER BY ContactName, ShipperName, OrderDate ASC;
