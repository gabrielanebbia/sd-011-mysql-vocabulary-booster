select t1.ContactName as `Nome`, t2.Country as `País`, count(*) as `Número de compatriotas`
from w3schools.customers as t1, w3schools.customers as t2
where t1.ContactName <> t2.ContactName and t1.Country = t2.Country
group by `Nome`, `País`
order by `Nome`;
