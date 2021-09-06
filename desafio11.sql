SELECT
c1.contactname AS 'Nome',
c1.country AS 'País',
COUNT(*) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS c1, w3schools.customers AS c2
WHERE c1.country = c2.country
GROUP BY c1.customername
ORDER BY c1.contactname;
