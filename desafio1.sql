SELECT COUNTRY_NAME AS País,
IF(REGION_NAME = 'Europe', 'incluído', 'não incluído') AS `Status Inclusão`
FROM hr.countries AS cn
INNER JOIN hr.regions AS re
ON cn.REGION_ID = re.REGION_ID
ORDER BY COUNTRY_NAME;
