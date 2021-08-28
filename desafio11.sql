SELECT 
c.contactname AS Nome, 
c.country AS País, 
COUNT(*) AS 'Número de compatriotas'
FROM w3schools.customers AS c, w3schools.customers AS cc
WHERE c.country = cc.country AND c.ContactName <> cc.ContactName
GROUP BY Nome, País
ORDER BY Nome;
