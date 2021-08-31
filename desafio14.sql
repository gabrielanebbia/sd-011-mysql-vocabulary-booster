SELECT
DISTINCT Country AS País
FROM (
SELECT Country from w3schools.suppliers
    UNION ALL
    SELECT Country from w3schools.customers
) AS Countries
ORDER BY Country
LIMIT 5;
