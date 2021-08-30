SELECT c.Country FROM customers AS c
UNION
SELECT s.Country FROM suppliers AS s
ORDER BY Country
LIMIT 5;
