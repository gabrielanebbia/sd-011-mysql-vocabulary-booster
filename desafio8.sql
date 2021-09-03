SELECT custmr.ContactName  AS 'Nome de contato', shipr.ShipperName AS 'Empresa que fez o envio', ordr.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS custmr

INNER JOIN w3schools.orders AS ordr
ON custmr.CustomerID = ordr.CustomerID

INNER JOIN w3schools.shippers AS shipr
ON ordr.ShipperID = shipr.ShipperID

WHERE shipr.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY custmr.ContactName ASC, shipr.ShipperName ASC, ordr.OrderDate ASC;

-- Artigo de apoio: https://www.w3schools.com/mysql/func_mysql_case.asp
