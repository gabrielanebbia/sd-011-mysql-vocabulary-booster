SELECT 
c.ContactName AS 'Nome',
c.Country AS 'País',
COUNT(d.CustomerID) AS 'Número de compatriotas'
FROM w3schools.customers AS c
INNER JOIN w3schools.customers AS d ON d.Country = c.Country
AND d.CustomerID <> c.CustomerID
GROUP BY c.CustomerID
ORDER BY `Nome`;
