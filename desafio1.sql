SELECT
  country_name AS `País`,
  IF (c.region_id = '1', 'incluído', 'não incluído') AS `Status Inclusão`
FROM
  hr.countries AS c
INNER JOIN
  hr.regions AS r
GROUP BY
  `País`
ORDER BY
  `País`;
