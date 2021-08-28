SELECT c.ContactName AS `Nome`,
c.Country AS `País`,
COUNT(c2.CustomerID) AS "Número de compatriotas"
FROM w3schools.customers AS c
INNER JOIN w3schools.customers AS c2
ON c2.Country = c.Country AND c2.CustomerID <> c.CustomerID
GROUP BY c.CustomerID
ORDER BY c.ContactName;
