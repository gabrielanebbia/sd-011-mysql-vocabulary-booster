SELECT C.Country AS 'País' FROM customers AS C
UNION
SELECT S.Country AS 'País' FROM suppliers AS S
ORDER BY País LIMIT 5;
