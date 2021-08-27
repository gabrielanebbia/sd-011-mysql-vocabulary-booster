SELECT c.ContactName AS Nome, c.Country AS 'País', COUNT(*) AS 'Números de compatriotas' 
FROM w3schools.customers AS c, w3schools.customers AS c2
WHERE c.Country = c2.Country and c.ContactName <> c2.ContactName
GROUP BY `Nome`, `País`
ORDER BY Nome;
