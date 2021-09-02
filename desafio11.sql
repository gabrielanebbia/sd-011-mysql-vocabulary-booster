SELECT C.ContactName AS 'Nome', C.Country AS 'País', CR.CountryRepeats -1 AS 'Número de compatriotas'
FROM w3schools.customers AS C
LEFT JOIN (
SELECT Country, COUNT(Country) AS CountryRepeats FROM w3schools.customers
GROUP BY Country) AS CR
ON C.Country = CR.Country
WHERE CR.CountryRepeats > 1
ORDER BY C.ContactName;
