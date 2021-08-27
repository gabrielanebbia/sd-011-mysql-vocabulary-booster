SELECT
  C.ContactName AS `Nome`,
  C.Country AS `País`,
  COUNT(C.Country) AS `Número de compatriotas`
  FROM customers AS C, customers AS CC
WHERE CC.Country = C.Country AND CC.ContactName != C.ContactName
GROUP BY C.ContactName, C.Country
HAVING `Número de compatriotas` > 0
ORDER BY C.ContactName;
