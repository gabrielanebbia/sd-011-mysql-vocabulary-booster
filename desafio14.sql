SELECT Country FROM w3schools.suppliers
UNION
SELECT Country FROM w3schools.customers
ORDER BY Country ASC LIMIT 5;

