SELECT country AS 'País' FROM (
SELECT 
c.Country
FROM w3schools.customers AS c
UNION

SELECT s.Country
FROM w3schools.suppliers AS s
) AS result
ORDER BY result.Country
LIMIT 5;
