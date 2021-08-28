SELECT * FROM w3schools.customers;
SELECT * FROM w3schools.suppliers;

SELECT c.Country
FROM w3schools.customers AS c
INNER JOIN w3schools.suppliers AS s ON c.Country = s.Country
ORDER BY c.country
LIMIT 5;


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

