SELECT P.COUNTRY_NAME AS País, IF(R.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS P
INNER JOIN hr.regions AS R
ON P.REGION_ID = R.REGION_ID
ORDER BY COUNTRY_NAME;
