SELECT c.COUNTRY_NAME AS 'País', IF (c.REGION_ID = r.REGION_ID, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS c
INNER JOIN hr.regions AS r
ON r.REGION_NAME = 'Europe'
ORDER BY c.COUNTRY_NAME;
