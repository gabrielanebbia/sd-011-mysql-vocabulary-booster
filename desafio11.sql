SELECT wcust.CONTACTNAME AS 'Nome',
wcust.COUNTRY AS 'País',
COUNT(wcust2.COUNTRY) AS 'Número de compatriotas'
FROM w3schools.customers AS wcust,
w3schools.customers AS wcust2
WHERE wcust.Country = wcust2.Country AND wcust.ContactName <> wcust2.ContactName
GROUP BY wcust.ContactName, wcust.Country
ORDER BY wcust.ContactName;
