SELECT cst.ContactName AS Nome, cst.Country AS País, 
COUNT(c.CustomerID) AS 'Número de compatriotas'
FROM w3schools.customers AS cst, w3schools.customers AS c
WHERE cst.Country = cst.Country AND cst.CustomerID != c.CustomerID
GROUP BY cst.ContactName, cst.Country ORDER BY Nome;
