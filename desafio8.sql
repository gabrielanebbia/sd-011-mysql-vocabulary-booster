
SELECT C.ContactName `Nome de contato`, S.ShipperName `Empresa que fez o envio`,
O.OrderDate `Data do pedido` FROM customers C
INNER JOIN shippers S
ON S.ShipperName IN ('Speedy Express', 'United Package')
INNER JOIN orders O
ON S.ShipperID = O.ShipperID AND C.CustomerID = O.CustomerID
INNER JOIN order_details OD
ON O.OrderID = OD.OrderID
GROUP BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`
ORDER BY `Nome de contato`, `Empresa que fez o envio`;
