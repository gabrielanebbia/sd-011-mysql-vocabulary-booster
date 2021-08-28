SELECT COUNTRY AS `País` FROM w3schools.customers 
UNION
SELECT COUNTRY AS `País` FROM w3schools.suppliers
ORDER BY `País`
LIMIT 5;
