SELECT 
cus.ContactName AS 'Nome',
cust.Country AS 'País',
COUNT(cust.Country) - 1 AS 'Número de compatriotas'
FROM
w3schools.customers AS cus
LEFT JOIN
w3schools.customers AS cust ON cus.Country = cust.Country
GROUP BY cus.ContactName , País
HAVING (COUNT(cust.Country) - 1) > 0 -- Tem que diminuir 1 pois o Count conta com ele mesmo, então a conta daria um compatriota a mais.
ORDER BY cus.ContactName;
