SELECT c.ContactName AS 'Nome',
c.Country AS 'País',
(SELECT COUNT(Country) - 1
FROM w3schools.customers
WHERE w3schools.customers.Country = c.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS c
HAVING `Número de compatriotas` > 0
ORDER BY c.ContactName;
