SELECT
c.country AS `País`
FROM
w3schools.customers AS C
UNION
SELECT
s.country
FROM
w3schools.suppliers AS s
ORDER BY
`País`
LIMIT 5;
