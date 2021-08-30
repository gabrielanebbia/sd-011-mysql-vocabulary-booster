SELECT c1.ContactName AS 'Nome',
c1.Country AS 'País',
(SELECT COUNT(c2.Country)
FROM customers as c2
WHERE c2.Country = c1.Country AND c1.ContactName <> c2.ContactName
) AS 'Número de compatriotas'
FROM customers AS c1
GROUP BY `Nome`, `País` HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
