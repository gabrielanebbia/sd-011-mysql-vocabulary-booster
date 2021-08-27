select t1.productname as Produto,
t1.price as Preço
from products as t1
inner join order_details as t2
on t1.productid = t2.productid
where t2.quantity > 80
order by Produto;
