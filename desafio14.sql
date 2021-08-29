SELECT Country AS 'País' FROM w3schools.customers 
UNION
SELECT Country AS 'País' FROM w3schools.suppliers
order by País
limit 5;
