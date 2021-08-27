select t1.contactname as Nome,
t1.country as País,
count(t1.country = t2.country) as `Número de compatriotas`
from customers as t1, customers as t2
where t1.country = t2.country and t1.contactname <> t2.contactname
group by t1.contactname
order by t1.contactname;
