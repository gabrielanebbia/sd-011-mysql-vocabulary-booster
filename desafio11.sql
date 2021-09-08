SELECT pc1.ContactNAme AS 'Nome', 
pc1.Country AS 'País',
COUNT(*) AS 'Número de compatriotas'
FROM w3schools.customers AS pc1, w3schools.customers AS pc2
WHERE 
pc1.Country = pc2.Country AND pc1.ContactName != pc2.ContactName
GROUP BY pc1.ContactName, pc2.Country 
ORDER BY pc1.ContactName ASC;
