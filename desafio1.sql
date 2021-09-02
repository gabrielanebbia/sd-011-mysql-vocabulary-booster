SELECT C.COUNTRY_NAME AS País,
IF(R.REGION_NAME = 'Europe', 'incluído', 'não incluído') `Status Inclusão`
FROM hr.countries C
INNER JOIN regions R
ON C.REGION_ID = R.REGION_ID
ORDER BY País;
