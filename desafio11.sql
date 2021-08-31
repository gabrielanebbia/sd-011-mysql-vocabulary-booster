SELECT
c.ContactName AS 'Nome',
c.Country AS 'País',
(SELECT COUNT(*) - 1
FROM w3schools.customers d
WHERE d.Country = c.Country) AS 'Número de compatriotas'
FROM w3schools.customers c
ORDER BY c.ContactName;
