SELECT A.ContactName AS 'Nome',
A.Country AS 'País',
SUM(IF(A.Country = B.Country, 1, 0))-1 AS 'Número de compatriotas'
FROM w3schools.customers A, w3schools.customers B
GROUP BY A.ContactName, A.Country
ORDER BY A.ContactName;
