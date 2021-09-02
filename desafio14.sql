(SELECT Country AS 'País' FROM customers) 
UNION
(SELECT Country FROM suppliers)
ORDER BY País ASC
LIMIT 5;
