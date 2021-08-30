SELECT c.Country AS 'País' FROM customers AS c
UNION
SELECT s.Country FROM suppliers AS s
ORDER BY `País`
LIMIT 5;
