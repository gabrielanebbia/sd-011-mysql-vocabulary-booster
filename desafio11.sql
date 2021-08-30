SELECT customersA.ContactName AS Nome,
customersA.Country AS País,
( SELECT COUNT(Country) -1
FROM w3schools.customers AS customersB
WHERE customersB.Country = customersA.Country ) AS `Número de compatriotas`
FROM w3schools.customers AS customersA
HAVING `Número de compatriotas` <> 0
ORDER BY customersA.ContactName;
