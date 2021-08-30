SELECT
		cstmr.ContactName AS 'Nome de contato',
    ships.ShipperName AS 'Empresa que fez o envio',
    ords.OrderDate as 'Data do pedido'
FROM w3schools.customers AS cstmr
INNER JOIN w3schools.shippers AS ships
INNER JOIN w3schools.orders AS ords
ON
	(ords.ShipperID IN (1, 2) AND ords.ShipperID = ships.ShipperID)
	AND cstmr.CustomerID = ords.CustomerID
ORDER BY cstmr.ContactName ASC;