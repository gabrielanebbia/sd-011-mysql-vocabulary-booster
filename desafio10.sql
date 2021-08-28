select
p.ProductName as `Produto`,
min(od.Quantity) as `Mínima`,
max(od.Quantity) as `Máxima`,
round(sum(od.Quantity)/count(*), 2) as `Média`
from w3schools.order_details as od
inner join w3schools.products as p on p.ProductID = od.ProductID
group by od.ProductID
having `Média` > 20.00
order by `Média`, `Produto`;
