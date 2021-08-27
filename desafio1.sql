SELECT h.country_name AS País, IF(r.region_name = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão' 
FROM hr.countries AS h
INNER JOIN hr.regions AS r
ON h.region_id = r.region_id
ORDER BY h.country_name;
