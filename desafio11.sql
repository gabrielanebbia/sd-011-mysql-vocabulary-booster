SELECT
t1.CustomerName AS Nome,
t1.Country AS País,
(SELECT COUNT(t2.Country) -1 FROM w3schools.customers AS t2 WHERE t1.Country = t2.Country) AS `Número de compatriotas`
FROM w3schools.customers AS t1
WHERE (SELECT COUNT(country) FROM w3schools.customers GROUP BY country HAVING country = t1.country) - 1 > 0
ORDER BY t1.CustomerName ASC;
