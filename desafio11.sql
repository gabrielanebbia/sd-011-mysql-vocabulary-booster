SELECT c.ContactName AS 'Nome',
c.COuntry AS 'País',
cr.CountryRepeats -1 AS 'Número de compatriotas'
FROM w3schools.customers AS c
LEFT JOIN (
SELECT Country, COUNT(Country) AS CountryRepeats FROM w3schools.customers
GROUP BY Country) AS cr
ON c.Country = cr.Country
WHERE cr.CountryRepeats > 1
ORDER BY c.ContactName;
