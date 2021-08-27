select t1.contactname as `Nome de contato`,
t3.shippername as `Empresa que fez o envio`,
t2.orderdate as `Data do pedido`
from customers as t1
inner join orders as t2
on t1.customerid = t2.customerid
inner join shippers as t3
on t3.shipperid = t2.shipperid
where t2.shipperid between 1 and 2
order by t1.contactname, t2.shipperid, t2.orderdate;
