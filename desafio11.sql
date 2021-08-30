SELECT
  ContactName AS 'Nome',
  Country AS 'País',
  (
    SELECT
      COUNT(*)
    FROM
      customers AS c2
    WHERE
      c2.Country = c1.Country AND
      c2.CustomerID != c1.CustomerID
  ) AS 'Número de compatriotas'
FROM
  customers AS c1
WHERE EXISTS
  (
    SELECT
      *
    FROM
      customers AS c2
    WHERE
      c2.Country = c1.Country AND
      c2.CustomerID != c1.CustomerID
  )
ORDER BY
  ContactName ASC;
