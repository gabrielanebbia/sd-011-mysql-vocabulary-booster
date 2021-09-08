(SELECT Country AS País from w3schools.customers)
UNION
(SELECT Country from w3schools.suppliers)
ORDER BY País
LIMIT 5;
