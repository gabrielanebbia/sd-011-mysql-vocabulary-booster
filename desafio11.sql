SELECT DISTINCT CSM1.ContactName AS 'Nome',
CSM1.Country AS 'País',
(SELECT COUNT(CSM2.Country) - 1
FROM w3schools.customers AS CSM2
WHERE CSM1.Country = CSM2.Country
GROUP BY `País`) AS `Número de compatriotas`
FROM w3schools.customers AS CSM1,
w3schools.customers AS CSM2
ORDER BY CSM1.ContactName ASC;
