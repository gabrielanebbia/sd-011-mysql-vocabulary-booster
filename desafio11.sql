SELECT t1.ContactName AS Nome,
t1.Country AS País,
((SELECT COUNT(t2.Country)
		FROM w3schools.customers AS t2 WHERE (t1.Country = t2.Country)) - 1) AS `Número de compatriota`
FROM w3schools.customers AS t1
HAVING `Número de compatriota` > 1
ORDER BY Nome ASC;