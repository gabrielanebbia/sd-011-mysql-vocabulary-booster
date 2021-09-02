SELECT DISTINCT Country AS 'País' FROM
(
SELECT Country FROM suppliers
UNION ALL
SELECT Country FROM customers
)
ORDER BY Country ASC LIMIT 5 ;
