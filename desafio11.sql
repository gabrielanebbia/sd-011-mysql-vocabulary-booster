SELECT 
a.ContactName AS Nome,
a.Country AS 'País',
(SELECT COUNT(*) - 1 FROM w3schools.customers AS b WHERE a.Country = b.Country) AS `Número de compatriotas`
FROM w3schools.customers AS a
WHERE (SELECT COUNT(*) - 1 FROM w3schools.customers AS b WHERE a.Country = b.Country) <> 0
ORDER BY Nome;
