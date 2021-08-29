SELECT C.ContactName AS 'Nome',
C.Country AS 'País',
COUNT(C.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS C
INNER JOIN w3schools.customers AS C2
WHERE C.Country = C2.Country AND C.ContactName <> C2.ContactName
GROUP BY C.ContactName, C.Country
ORDER BY  C.ContactName;
