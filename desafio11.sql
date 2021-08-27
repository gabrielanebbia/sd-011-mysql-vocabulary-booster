SELECT N.ContactName AS 'Nome', N.Country AS 'País',
COUNT(N.Country) AS 'Número de compatriotas'
FROM w3schools.customers N, w3schools.customers C
WHERE C.Country = N.Country AND N.ContactName != C.ContactName
GROUP BY N.ContactName, N.Country
HAVING `Número de compatriotas` > 0
ORDER BY N.ContactName ASC;
