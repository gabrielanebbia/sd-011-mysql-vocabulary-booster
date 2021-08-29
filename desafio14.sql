(SELECT DISTINCT country AS 'País'
FROM w3schools.customers)
UNION
(SELECT DISTINCT country AS 'País'
FROM w3schools.suppliers)
ORDER BY `País`
LIMIT 5;
