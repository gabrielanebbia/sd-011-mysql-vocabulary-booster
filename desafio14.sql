SELECT Country AS 'País' FROM (
(SELECT Country FROM w3schools.customers)
UNION
(SELECT Country FROM w3schools.suppliers)) AS c
ORDER BY Country
LIMIT 5;
