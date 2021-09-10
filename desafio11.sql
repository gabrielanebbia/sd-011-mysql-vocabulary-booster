select customers1.ContactName as 'Nome',
customers1.Country as 'País',
COUNT(customers1.Country) AS 'Número de compatriotas'
FROM w3schools.customers as customers1, w3schools.customers as customers2
where customers1.Country = customers2.Country AND customers1.CustomerID <> customers2.CustomerID
GROUP BY `Nome`, `País`
HAVING `Número de compatriotas` <> 0
ORDER BY `Nome`;
