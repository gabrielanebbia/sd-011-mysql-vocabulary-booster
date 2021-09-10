select customers1.ContactName as 'Nome',
customers1.Country as 'País',
count(customers1.Country) - 1 AS 'Número de Compatriotas'
FROM w3schools.customers as customers1, w3schools.customers as customers2
where customers1.Country = customers2.Country
GROUP BY `Nome`, `País`
HAVING `Número de Compatriotas` <> 0
ORDER BY `Nome`;
