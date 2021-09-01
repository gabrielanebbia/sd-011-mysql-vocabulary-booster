SELECT t1.ContactName AS Nome,
t1.Country AS País,
t2.CONTADOR AS 'Número de compatriotas'
FROM w3schools.customers AS t1
RIGHT JOIN (
SELECT  COUNTRY, COUNT(COUNTRY) -1 AS CONTADOR
FROM w3schools.customers
GROUP BY COUNTRY
HAVING (COUNT(COUNTRY) -1) > 0
) AS t2
ON t1.COUNTRY = t2.COUNTRY
ORDER BY t1.ContactName;
