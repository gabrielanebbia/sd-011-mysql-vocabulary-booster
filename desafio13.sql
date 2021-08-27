select t1.productname as Produto,
t1.price as Preço
from w3schools.products as t1
inner join w3schools.order_details as t2
on t1.productid = t2.productid
where t2.quantity > 80
order by Produto;
