select
c.ContactName as `Nome de contato`,
sp.ShipperName as `Empresa que fez o envio`,
o.OrderDate as `Data do pedido`
from w3schools.customers as c
inner join w3schools.orders as o on o.CustomerID = c.CustomerID
inner join w3schools.shippers as sp on sp.ShipperID = o.ShipperID
where sp.ShipperID in (1,2)
order by `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
