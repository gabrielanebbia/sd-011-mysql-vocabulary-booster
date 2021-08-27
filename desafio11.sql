SELECT C.ContactName AS 'Nome',
C.Country AS 'País',
(
	SELECT COUNT(Country) - 1 FROM w3schools.customers
    WHERE w3schools.customers.Country = C.Country
) AS 'Número de compatriotas'
FROM w3schools.customers AS C
HAVING `Número de compatriotas` > 0
ORDER BY C.ContactName;