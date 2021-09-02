SELECT C1.contactName AS Nome, C1.country AS País,
COUNT(C2.country) AS 'Número de compatriotas'
FROM w3schools.customers AS C1, w3schools.customers AS C2
WHERE C1.country = C2.country
AND
C1.ContactName <> C2.ContactName
GROUP BY Nome, País
ORDER BY Nome;
