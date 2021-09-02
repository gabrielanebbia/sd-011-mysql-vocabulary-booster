SELECT c1.ContactName AS 'Nome',
c1.country AS 'País',
COUNT(c2.Country) - 1 AS 'Número de compatriotas' 
FROM customers AS c1, customers AS c2
WHERE c1.Country = c2.Country
GROUP BY c1.ContactName, c2.Country
HAVING COUNT(c2.Country) - 1 > 0
ORDER BY c1.ContactName ASC;
