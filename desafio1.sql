SELECT C.COUNTRY_NAME AS 'País', IF(R.REGION_NAME = 'EUROPE', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries C
INNER JOIN hr.regions R
ON R.REGION_ID = C.REGION_ID
ORDER BY C.COUNTRY_NAME;
