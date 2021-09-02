SELECT c1.ContactName AS 'Nome',
c1.Country AS 'País',
(SELECT COUNT(Country) -1
FROM w3schools.customers AS c2
WHERE c2.Country = c1.country 
GROUP BY Country) AS 'Número de compatriotas'
FROM w3schools.customers AS c1
WHERE(SELECT COUNT(Country) FROM w3schools.customers AS c2
WHERE c2.Country = c1.Country GROUP BY Country) > 1
ORDER BY c1.ContactName;
