SELECT
COUNTRY_NAME AS 'País',
IF(REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS a
INNER JOIN hr.regions AS b
ON a.REGION_ID = b.REGION_ID
ORDER BY COUNTRY_NAME;
