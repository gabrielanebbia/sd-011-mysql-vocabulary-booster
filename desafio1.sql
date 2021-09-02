SELECT country_name AS País,
CASE
  WHEN region_id = 1 THEN 'incluído'
  ELSE 'não incluído'
END AS 'Status'
FROM hr.countries
ORDER BY País ASC;
