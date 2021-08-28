SELECT t1.CustomerName AS Nome, t1.Country AS País, (SELECT COUNT(t2.Country) -1 AS `Número de compatriotas`	FROM w3schools.customers AS t2 WHERE t1.Country = t2.Country) AS `Número de compatriotas` FROM w3schools.customers AS t1 ORDER BY Nome ASC;

