(SELECT c.Country AS 'País'
FROM w3schools.customers AS c)
UNION
(SELECT sup.Country 
FROM w3schools.suppliers AS sup)
ORDER BY País LIMIT 5;
