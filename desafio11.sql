SELECT ContactName AS Nome, Country AS País,
(SELECT COUNT(Country) - 1 FROM customers
GROUP BY Country HAVING Country = País) AS 'Número de compatriotas'
FROM customers
HAVING `Número de compatriotas` <> 0
ORDER BY Nome;
