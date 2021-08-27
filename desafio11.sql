SELECT 
ContactName AS 'Nome',
Country AS 'País',
(SELECT 
(COUNT(Country) - 1)
FROM
w3schools.customers
GROUP BY Country
HAVING Country = País) AS 'Número de compatriotas'
FROM
w3schools.customers AS cust
HAVING `Número de compatriotas` <> 0
ORDER BY `Nome`;
