SELECT
ContactName AS 'Nome',
Country AS 'País',
(
SELECT
COUNT(*)
FROM
customers AS cs2
WHERE
cs2.Country = cs1.Country AND
cs2.CustomerID != cs1.CustomerID
) AS 'Número de compatriotas'
FROM
customers AS cs1
WHERE EXISTS
(
SELECT
*
FROM
customers AS cs2
WHERE
cs2.Country = cs1.Country AND
cs2.CustomerID != cs1.CustomerID
)
ORDER BY
ContactName ASC;
