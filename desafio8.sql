select t1.contactname as `Nome de contato`,
t2.shipperid as `Empresa que fez o envio`,
t2.orderdate as `Data do pedido`
from customers as t1
inner join orders as t2
on t1.customerid = t2.customerid
where t2.shipperid between 1 and 2
order by t1.contactname, t2.shipperid, t2.orderdate;
