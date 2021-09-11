SELECT c.ContactName AS 'Nome',
c.Country AS 'País',
(SELECT COUNT(Country) - 1 FROM customers 
WHERE customers.Country = c.Country
) AS 'Número de compatriotas'
FROM customers AS c
ORDER BY 1;
