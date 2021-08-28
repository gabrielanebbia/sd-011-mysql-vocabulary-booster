SELECT c1.ContactName AS 'Nome',
c1.Country AS 'País',
(SELECT (COUNT(c2.Country) - 1)
FROM customers as c2
WHERE c2.Country = c1.Country
) AS 'Número de compatriotas'
FROM customers AS c1
GROUP BY `Nome` HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
