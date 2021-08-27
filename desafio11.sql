SELECT a.ContactName AS 'Nome', 
a.Country AS 'País',
COUNT(*) AS 'Número de compatriotas'
FROM w3schools.customers AS a,
w3schools.customers AS b
WHERE a.Country = b.Country AND a.ContactName <> b.ContactName
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
