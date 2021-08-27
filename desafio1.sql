SELECT c.COUNTRY_NAME AS `País`, (
  SELECT CASE r.REGION_NAME
  WHEN 'Europe' THEN 'incluído'
  ELSE 'não incluído'
  END
  FROM hr.regions AS r
  WHERE c.REGION_ID = r.REGION_ID
) AS `Status Inclusão`
FROM hr.countries AS c
ORDER BY c.COUNTRY_NAME ASC;