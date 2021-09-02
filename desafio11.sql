SELECT 
wc3.ContactName as 'Nome',
countryData.País,
countryData.Counter AS 'Número de compatriotas'
FROM	(
  SELECT DISTINCT
Country AS País,
COUNT(Country)-1 AS Counter
  from w3schools.customers
GROUP BY Country
    ) AS countryData
INNER JOIN w3schools.customers AS wc3
ON wc3.Country = countryData.País
WHERE countryData.Counter != 0
ORDER BY wc3.ContactName;