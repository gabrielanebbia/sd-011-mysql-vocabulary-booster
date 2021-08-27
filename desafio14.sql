(select t1.country as País
from w3schools.customers as t1)
union
(select t2.country as País
from w3schools.suppliers as t2)
order by País
limit 5;
