SELECT c.ContactName AS 'Nome',
c.Country AS 'País',
(SELECT COUNT(Country) - 1 FROM customers 
WHERE customers.Country = c.Country
) AS 'Número de compatriotas'
FROM customers AS c
HAVING `Número de compatriotas` > 0
ORDER BY 1;
