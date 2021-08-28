SELECT 
externalCountry.ContactName AS 'Nome',
externalCountry.Country AS 'País',
(
SELECT COUNT(*) FROM w3schools.customers AS internalCountry
WHERE internalCountry.Country = externalCountry.Country
AND internalCountry.CustomerID <> externalCountry.CustomerID
) AS 'Número de compatriotas'
FROM w3schools.customers AS externalCountry
WHERE (
SELECT COUNT(*) FROM w3schools.customers AS internalCountry
WHERE internalCountry.Country = externalCountry.Country
AND internalCountry.CustomerID <> externalCountry.CustomerID
) <> 0
ORDER BY externalCountry.ContactName ASC;
