-- SELECT COUNTRY_NAME AS 'País',
-- 	IF(REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
-- FROM hr.countries
-- ORDER BY COUNTRY_NAME;
SELECT COUNTRY_NAME AS 'País',
IF(REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM 
hr.countries AS c
INNER JOIN
hr.regions AS r
ON
r.REGION_ID = c.REGION_ID
ORDER BY COUNTRY_NAME;
