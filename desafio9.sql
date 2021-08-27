select concat(t1.firstname, ' ', t1.lastname) as `Nome completo`,
count(t2.orderid) as `Total de pedidos`
from employees as t1
inner join orders as t2
on t1.employeeid = t2.employeeid
group by t2.employeeid
order by count(t2.orderid);
