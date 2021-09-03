SELECT ctms1.ContactName 'Nome', ctms1.Country 'País', `Número de compatriotas` FROM w3schools.customers ctms1
RIGHT JOIN
(
SELECT COUNT(*) - 1 'Número de compatriotas', Country FROM w3schools.customers
GROUP BY Country
HAVING `Número de compatriotas` > 0
) ctms2
ON ctms1.Country = ctms2.Country
ORDER BY `Nome`;
