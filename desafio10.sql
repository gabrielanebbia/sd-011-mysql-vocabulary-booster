select t1.productname as Produto,
min(t2.quantity) as Mínima,
max(t2.quantity) as Máxima,
round(avg(t2.quantity), 2) as Média
from products as t1
inner join order_details as t2
on t1.productid = t2.productid
group by t2.productid
having round(avg(t2.quantity), 2) > 20.00
order by round(avg(t2.quantity), 2), Produto;
