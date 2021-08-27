SELECT ContactName AS 'Nome', Country AS 'País',
(SELECT COUNT(*)-1
FROM w3schools.customers AS t1
GROUP BY Country
HAVING t1.Country = t2.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS t2
WHERE (SELECT COUNT(*)-1
FROM w3schools.customers AS t1
GROUP BY Country
HAVING t1.Country = t2.Country) > 0
ORDER BY ContactName ASC;
