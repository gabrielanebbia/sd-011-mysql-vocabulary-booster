SELECT DISTINCT Country AS 'País'
FROM (
SELECT Country FROM w3schools.suppliers
	UNION ALL 
    SELECT Country FROM w3schools.customers
) AS Countries
ORDER BY Country
LIMIT 5;
