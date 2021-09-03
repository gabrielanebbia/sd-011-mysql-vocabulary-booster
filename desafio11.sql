SELECT ContactName AS `Nome`,
Country AS `País`,
(SELECT COUNT(Country)
FROM w3schools.customers
WHERE w3schools.customers.Country = C.Country 
AND w3schools.customers.CustomerID <> C.CustomerID)
AS `Número de compatriotas`
FROM w3schools.customers AS C
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;

