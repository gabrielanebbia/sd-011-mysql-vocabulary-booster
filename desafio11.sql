SELECT C1.ContactName AS Nome,
C1.Country AS Pais,
(SELECT (COUNT(Country) - 1)
FROM customers AS C2
GROUP BY Country
HAVING C2.Country = C1.Country) AS 'Número de compatriotas'
FROM customers AS C1
WHERE ((SELECT (COUNT(Country) - 1)
FROM customers AS C2
GROUP BY Country
HAVING C2.Country = C1.Country) > 0)
ORDER BY C1.ContactName;
