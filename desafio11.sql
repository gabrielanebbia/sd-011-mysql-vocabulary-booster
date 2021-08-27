SELECT ContactName AS `Nome`, 
Country AS `País`,
(
  SELECT COUNT(*)
  FROM w3schools.customers AS c2
  WHERE c1.Country = c2.Country
  AND c1.CustomerID != c2.CustomerID
) AS `Número de compatriotas`
FROM w3schools.customers AS c1
ORDER BY `Nome`;
