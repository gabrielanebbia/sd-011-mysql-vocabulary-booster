SELECT C1.ContactName AS Nome,
C1.Country AS País,
COUNT(C2.CustomerID) - 1 AS "Número de compatriotas"
FROM w3schools.customers AS C1
INNER JOIN w3schools.customers AS C2 ON C2.Country = C1.Country
GROUP BY C1.CustomerID
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
