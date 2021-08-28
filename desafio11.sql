SELECT
t2.ContactName AS 'Nome',
t2.Country AS 'País',
t1.country_count - 1 AS 'Número de compatriotas'
FROM (
SELECT
COUNT(*) as country_count,
Country
FROM w3schools.customers
GROUP BY Country
) AS t1
INNER JOIN w3schools.customers AS t2 ON  t1.Country = t2.Country
ORDER BY t2.ContactName;
