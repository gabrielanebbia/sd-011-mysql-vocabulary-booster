SELECT c.CustomerName Nome , c.Country País, 
(SELECT COUNT(Country) from w3schools.customers cc WHERE cc.Country = c.Country and cc.CustomerID != c.CustomerID) AS `Número de compatriotas` 
FROM w3schools.customers c
ORDER BY Nome;
