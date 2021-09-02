-- 8 - Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package"
SELECT
  WC.ContactName AS 'Nome de contato',
  WS.ShipperName AS 'Empresa que fez o envio',
  WO.OrderDate AS 'Data do pedido'
FROM
  w3schools.orders AS WO
  INNER JOIN w3schools.shippers AS WS ON WS.ShipperID = WO.ShipperID
  INNER JOIN w3schools.customers AS WC ON WC.CustomerID = WO.CustomerID
WHERE
  WS.ShipperName = "Speedy Express" OR WS.ShipperName = "United Package"
ORDER BY WC.ContactName ASC, WS.ShipperName ASC, WO.OrderDate ASC;
