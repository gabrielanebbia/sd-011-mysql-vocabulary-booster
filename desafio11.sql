SELECT c.CustomerName 'Nome', 
c.Country AS 'País', 
(SELECT COUNT(*) from w3schools.customers cc 
WHERE cc.Country = c.Country AND cc.CustomerID != c.CustomerID) AS 'Número de compatriotas' 
FROM w3schools.customers c
WHERE (SELECT COUNT(*) from w3schools.customers cc 
WHERE cc.Country = c.Country AND cc.CustomerID != c.CustomerID) != 0
ORDER BY c.CustomerName;
