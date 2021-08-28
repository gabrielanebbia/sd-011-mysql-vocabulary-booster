SELECT t1.ContactName AS 'Nome', t1.Country AS 'País', (SELECT COUNT(Country)-1 FROM w3schools.customers WHERE Country = t1.Country ) AS 'Número de compatriotas' FROM w3schools.customers AS t1 INNER JOIN w3schools.customers AS t2 ON t1.Country = t2.Country GROUP BY t1.ContactName HAVING COUNT(t1.Country) > 1 ORDER BY t1.ContactName;

