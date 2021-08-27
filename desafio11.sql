SELECT
  C.ContactName AS `Nome`,
  C.Country AS `País`,
  COUNT(CC.Country) AS `Número de compatriotas`
  FROM customers AS C, customers AS CC
WHERE C.Country = CC.Country AND C.ContactName != CC.ContactName
GROUP BY CC.ContactName, CC.Country
HAVING `Número de compatriotas` > 0
ORDER BY CC.ContactName;
