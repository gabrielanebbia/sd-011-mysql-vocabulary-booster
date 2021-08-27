SELECT N.ContactName AS 'Nome', N.Country AS 'País',
COUNT(N.Country) AS 'Número de compatriotas'
FROM customers AS N, w3schools.customers AS C
WHERE C.Country = N.Country AND N.ContactName != C.ContactName
GROUP BY N.ContactName, N.Country
HAVING `Número de compatriotas` > 0
ORDER BY N.ContactName ASC;
