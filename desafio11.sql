SELECT
cons.ContactName AS Nome,
cons.Country AS País,
COUNT(*) AS `Número de compatriotas`
FROM w3schools.customers AS cons
INNER JOIN
w3schools.customers AS cont ON cont.Country = cons.Country
WHERE cont.CustomerID <> cons.CustomerID
GROUP BY cons.CustomerID
ORDER BY Nome;
