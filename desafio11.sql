SELECT ct1.ContactName AS 'Nome',
ct1.Country AS 'País',
( SELECT COUNT(Country) - 1 FROM w3schools.customers ct2
WHERE ct2.Country = ct1.Country ) AS `Número de compatriotas`
FROM w3schools.customers ct1
HAVING `Número de compatriotas` > 0
ORDER BY ct1.ContactName;
