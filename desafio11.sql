SELECT * FROM w3schools.customers;
SELECT cust.ContactName AS "Nome",
cust.Country AS "País",
COUNT(cust2.CustomerID) AS "Número de compatriotas"
FROM w3schools.customers AS cust
INNER JOIN w3schools.customers AS cust2
ON cust.Country = cust2.Country AND cust.CustomerID <> cust2.CustomerID
GROUP BY cust.CustomerID
ORDER BY cust.ContactName;
