SELECT cust1.ContactName AS 'Nome',
cust1.Country AS 'País',
COUNT(cust1.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS cust1
INNER JOIN w3schools.customers AS cust2
ON cust1.Country = cust2.Country AND cust1.CustomerID != cust2.CustomerID
GROUP BY cust1.ContactName, cust2.Country
ORDER BY cust1.ContactName ASC;
