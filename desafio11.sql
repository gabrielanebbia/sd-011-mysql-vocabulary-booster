SELECT
c1.contactname AS 'Nome',
c1.country AS 'País',
(SELECT
COUNT(country)
FROM w3schools.customers
GROUP BY country
HAVING country = c1.country
) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS c1, w3schools.customers AS c2
WHERE c1.country = c2.country
GROUP BY c1.customername
HAVING (SELECT
COUNT(country)
FROM w3schools.customers
GROUP BY country
HAVING country = c1.country
) - 1 > 0
ORDER BY c1.contactname;
