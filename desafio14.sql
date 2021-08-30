SELECT CST.Country AS `País`
FROM w3schools.customers AS CST
UNION
SELECT SUP.Country
FROM w3schools.suppliers AS SUP
ORDER BY `País`
LIMIT 5;