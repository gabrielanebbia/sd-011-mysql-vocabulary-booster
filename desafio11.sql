SELECT tb1.ContactName AS 'Nome',
tb1.Country AS 'País',
COUNT(*) AS 'Números de compatriotas'
FROM w3schools.customers AS tb1, w3schools.customers AS tb2
WHERE tb1.Country = tb2.Country 
AND tb1.ContactName <> tb2.ContactName
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
