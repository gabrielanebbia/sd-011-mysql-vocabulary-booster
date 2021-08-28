SELECT ContactName AS Nome,
Country AS País,
(
SELECT COUNT(ContactName) - 1
FROM w3schools.customers
WHERE Country = t1.Country
) as `Número de compatriotas`
FROM w3schools.customers t1
HAVING `Número de compatriotas` <> 0
ORDER BY ContactName;
