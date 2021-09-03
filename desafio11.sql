SELECT cus1.ContactName AS Nome, cus1.Country AS País, COUNT(cus1.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS cus1, w3schools.customers AS cus2
WHERE cus1.Country = cus2.Country
GROUP BY cus1.Country, cus1.ContactName
HAVING `Número de compatriotas` <> 0
ORDER BY Nome;
