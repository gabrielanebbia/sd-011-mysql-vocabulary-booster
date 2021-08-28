SELECT C.COUNTRY_NAME AS País, IF(REGION_NAME = 'Europe', 'incluído', 'não incluído') AS "Status Inclusão"
FROM hr.countries AS C
LEFT JOIN hr.regions AS R
ON C.REGION_ID = R.REGION_ID
ORDER BY País;
