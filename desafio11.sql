SELECT c1.CustomerName AS 'Nome',
c1.Country AS 'País',
COUNT(*) - 1 AS 'Número de compatriotas'
FROM w3schools.customers c1, w3schools.customers c2
WHERE c1.Country = c2.Country
GROUP BY c1.CustomerName, c1.Country
ORDER BY c1.CustomerName;
