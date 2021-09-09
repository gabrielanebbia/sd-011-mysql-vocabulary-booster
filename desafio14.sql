SELECT
country AS 'País'
FROM
((SELECT
country
FROM w3schools.customers)
UNION
(SELECT
country
FROM w3schools.suppliers)
) AS country
ORDER BY country
LIMIT 5;
