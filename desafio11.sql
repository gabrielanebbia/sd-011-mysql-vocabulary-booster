SELECT c1.ContactName 'Nome',
c1.Country 'País',
COUNT(c1.Country) - 1 'Número de compatriotas'
FROM w3schools.customers AS c1, w3schools.customers AS c2
WHERE c1.Country = c2.Country
GROUP BY c1.CustomerName
HAVING COUNT(c1.Country) - 1 > 1 
ORDER BY c1.ContactName;
