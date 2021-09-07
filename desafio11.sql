SELECT c.ContactName AS 'Nome', 
c.Country AS 'País', 
(SELECT COUNT(*) FROM w3schools.customers cc 
WHERE c.Country = cc.Country AND c.CustomerID != cc.CustomerID) AS 'Número de compatriotas' 
FROM w3schools.customers c
WHERE (SELECT COUNT(*) FROM w3schools.customers cc 
WHERE c.Country = cc.Country AND c.CustomerID != cc.CustomerID) != 0
ORDER BY c.ContactName;
