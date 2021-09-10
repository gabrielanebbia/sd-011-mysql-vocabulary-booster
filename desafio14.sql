SELECT Country AS 'País'
FROM w3schools.customers
UNION

SELECT Country AS 'País'
FROM w3schools.suppliers

ORDER BY `País`
LIMIT 5;

-- cool articles: https://www.techonthenet.com/mysql/union.php
