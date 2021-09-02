SELECT country_name AS País,
CASE
  WHEN region_id = 1 THEN 'inlcuido'
  ELSE 'Não incluido'
END AS 'Status'
FROM hr.countries
ORDER BY País ASC;
