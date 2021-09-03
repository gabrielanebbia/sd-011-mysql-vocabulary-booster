SELECT C1.ContactName AS 'Nome', C1.Country AS 'País', COUNT(C2.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS C1, w3schools.customers AS C2
WHERE C1.Country = C2.Country
GROUP BY C1.ContactName, C2.Country
ORDER BY C1.ContactName;
