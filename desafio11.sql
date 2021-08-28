SELECT 
c.ContactName AS 'Nome',
c.Country AS 'País',
(
SELECT COUNT(c2.Country) -1
FROM w3schools.customers AS c2
WHERE c2.Country = c.Country
) AS 'Número de compatriotas' 
FROM w3schools.customers AS c
ORDER BY c.ContactName;
