SELECT C.ContactName AS 'Nome',
C.Country AS 'País',
(SELECT COUNT(*) - 1 FROM customers C
WHERE C.Country = País) AS 'Número de compatriotas'
FROM customers C
WHERE C.Country = C.Country
GROUP BY C.ContactName , C.Country
HAVING `Número de compatriotas` <> 0
ORDER BY Nome;
