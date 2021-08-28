select t1.contactname as Nome,
t1.country as País,
(select count(t2.country) from w3schools.customers as t2
where t1.country = t2.country and t1.contactname <> t2.contactname) as `Número de compatriotas`
from w3schools.customers as t1
where (select count(t2.country) from w3schools.customers as t2
where t1.country = t2.country and t1.contactname <> t2.contactname) > 0
order by t1.contactname;
