SELECT t1.ContactName, 
t1.Country AS 'País',
(SELECT COUNT(*) FROM w3schools.customers t2
WHERE t1.Country = t2.Country AND t1.CustomerID <> t2.CustomerID) AS 'Número de compatriotas'
FROM w3schools.customers t1
ORDER BY t1.ContactName;
