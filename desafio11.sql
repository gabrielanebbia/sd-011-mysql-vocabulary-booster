SELECT c1.ContactName AS 'Nome', c1.Country AS 'País', count(*) AS 'Número de compatriotas'
FROM w3schools.customers AS c1, w3schools.customers AS c2
WHERE c1.Country = c2.Country AND c2.ContactName <> c1.ContactName
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
