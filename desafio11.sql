SELECT t1.ContactName AS Nome,
t1.Country AS País,
(SELECT COUNT(*) FROM w3schools.customers AS t2
WHERE t1.Country = t2.Country AND t1.CustomerID <> t2.CustomerID) AS 'Número de compatriotas'
FROM w3schools.customers AS t1
WHERE(SELECT COUNT(*) FROM w3schools.customers AS t2
WHERE t1.Country = t2.Country AND t1.CustomerID <> t2.CustomerID) > 0
ORDER BY Nome;
