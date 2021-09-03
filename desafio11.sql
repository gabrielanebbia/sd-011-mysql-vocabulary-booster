SELECT c.ContactName as Nome,
(
SELECT COUNT(Country) -1
FROM customers
WHERE Country = c.Country
) AS 'Número de compatriotas'
FROM customers AS c
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
