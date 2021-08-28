(SELECT Country AS "País" FROM suppliers
ORDER BY `País` LIMIT 5)
UNION 
(SELECT Country FROM customers
ORDER BY Country LIMIT 5)
ORDER BY `País` LIMIT 5;
