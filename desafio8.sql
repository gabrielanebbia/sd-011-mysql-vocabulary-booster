SELECT c.ContactName as 'Nome do contato', 
c.CustomerName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
from w3schools.customers as c
INNER JOIN w3schools.orders AS o ON o.CustomerID = c.CustomerID
ORDER BY ContactName, CustomerName, o.OrderDate;
