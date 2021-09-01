SELECT
  country_name AS País,
  IF (c.region_id = '1', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM
  countries AS c
INNER JOIN regions AS r
GROUP BY country_name
ORDER BY country_name;