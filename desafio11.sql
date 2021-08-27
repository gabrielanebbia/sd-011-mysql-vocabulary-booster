SELECT
  c1.ContactName AS 'NOME',
  c1.Country AS 'Páis',
  (
    (
      SELECT
        COUNT(*)
      FROM
        w3schools.customers AS c2
      WHERE
        c2.Country = c1.Country
    ) - 1
  ) AS 'Número de compatriotas'
FROM
  w3schools.customers AS c1
ORDER BY
  c1.ContactName;
