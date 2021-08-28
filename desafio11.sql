SELECT t1.contactName AS 'Nome', t1.country AS 'País',
COUNT(t2.country) AS 'Número de compatriotas'
FROM w3schools.customers AS t1, w3schools.customers AS t2
WHERE t1.country = t2.country
AND t1.customerID != t2.customerID
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
