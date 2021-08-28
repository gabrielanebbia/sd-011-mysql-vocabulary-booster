SELECT c.COUNTRY_NAME AS 'País',
IF(re.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS c
INNER JOIN hr.regions AS re ON re.REGION_ID = c.REGION_ID
ORDER BY `País`;
