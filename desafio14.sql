SELECT 
DISTINCT C.Country
FROM w3schools.customers as C
UNION
SELECT 
DISTINCT S.COUNTRY
FROM w3schools.suppliers as S
ORDER BY Country ASC
LIMIT 5;
