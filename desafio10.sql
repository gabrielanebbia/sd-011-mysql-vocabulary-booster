SELECT t1.CustomerName AS Nome, t1.Country AS País, COUNT(t1.Country) - 1 AS `Número de compatriotas` FROM w3schools.customers AS t1 GROUP BY t1.CustomerName ORDER BY Nome ASC;
