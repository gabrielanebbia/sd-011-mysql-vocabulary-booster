SELECT ContactName AS 'Nome',
Country AS 'País',
(
SELECT COUNT(*) - 1
FROM w3schools.customers
GROUP BY Country
HAVING Country = `País`
) AS 'Número de compatriotas'  
FROM w3schools.customers
ORDER BY `Nome`;
