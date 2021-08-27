SELECT 
c.ContactName AS 'Nome',
d.Country AS 'País',
COUNT(*) AS 'Número de compatriotas'
FROM
customers AS c,
customers AS d
WHERE
c.Country = d.Country
AND c.ContactName != d.ContactName
GROUP BY c.ContactName , d.Country
ORDER BY c.ContactName;
