SELECT
  ContactName AS `Nome`,
  Country AS `País`,
  (
    SELECT
        COUNT(Country) - 1
      FROM w3schools.customers
      GROUP BY Country
      HAVING C.Country = Country
  ) AS `Número de compatriotas`
FROM w3schools.customers AS C
HAVING `Número de compatriotas` <> 0
ORDER BY `Nome`;
