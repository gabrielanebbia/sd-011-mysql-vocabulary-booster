SELECT
C.COUNTRY_NAME AS 'País',
CASE
WHEN R.REGION_NAME = 'Europe' THEN 'incluído'
WHEN R.REGION_NAME <> 'Europe' THEN 'não incluído'
END AS `Status Inclusão`
FROM hr.countries AS C
LEFT JOIN hr.regions AS R
ON C.REGION_ID = R.REGION_ID;
