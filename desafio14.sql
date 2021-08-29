SELECT  Country FROM "País" AS w3schools.suppliers
UNION DISTINCT
SELECT Country FROM  w3schools.customers
ORDER BY 1 LIMIT 5;
