SELECT a.ContactName AS `Nome`,
a.Country AS `País`,
COUNT(a.Country) AS `Número de compatriotas`
FROM w3schools.customers a, w3schools.customers b
WHERE b.Country = a.Country
AND a.ContactName <> b.ContactName
GROUP BY a.ContactName, a.Country
HAVING `Número de compatriotas` > 0
ORDER BY a.ContactName;
