SELECT c1.ContactName AS 'Nome',
c1.Country AS 'País',
( SELECT COUNT(Country) - 1
FROM w3schools.customers c2
WHERE c2.Country = c1.Country ) AS `Número de compatriotas`
FROM w3schools.customers c1
HAVING `Número de compatriotas` <> 0
ORDER BY c1.ContactName;
