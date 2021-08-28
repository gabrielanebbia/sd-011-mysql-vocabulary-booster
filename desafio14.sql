SELECT
DISTINCT c.country AS 'País'
FROM
customers AS c
UNION ALL
SELECT
DISTINCT s.country
FROM
suppliers AS s
ORDER BY `País`
LIMIT 5;
