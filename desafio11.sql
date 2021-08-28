SELECT c1.ContactName AS 'Nome',
c1.Country AS 'País',
COUNT(c2.CustomerID) AS 'Número de compatriotas'
FROM w3schools.customers AS c1
INNER JOIN w3schools.customers AS c2 ON c2.Country = c1.Country AND c2.CustomerID <> c1.CustomerID
GROUP BY c1.CustomerId
ORDER BY c1.ContactName;
