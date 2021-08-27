SELECT a.ContactName AS "Nome de contato",
c.ShipperName AS "Empresa que fez o envio" ,
b.OrderDate AS "Data do pedido" 
FROM customers AS a
INNER JOIN orders AS b
ON a.CustomerID = b.CustomerID
INNER JOIN shippers AS c
ON b.ShipperID = c.ShipperID
WHERE c.ShipperName = "Speedy Express" OR c.ShipperName = "United Package" 
ORDER BY ContactName, ShipperName, OrderDate;
