SELECT * FROM w3schools.customers;
SELECT 
C.ContactName AS 'Nome',
C.Country AS 'País',
COUNT(D.CustomerID) AS 'Número de compatriotas'
FROM w3schools.customers AS C
INNER JOIN w3schools.customers AS D ON D.Country = C.Country
AND D.CustomerID <> C.CustomerID
GROUP BY C.CustomerID
ORDER BY `Nome`;
